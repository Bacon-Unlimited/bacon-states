##os: ubuntu
######### REQUIRED STEPS #####################
#   1. Upload Crowd Strike DEB installer and CID files to Bacon REPOSITORY>FILES
#   2. Install Crowdstrike DEB file
#   3. Activate the appication with customer specific CID number: /opt/CrowdStrike/falconctl -s --cid=$(cat cid_file.txt)
#   4. Start the crowdstrike service
##############################################

# download the DEB installer
download_crowdstrike:
  file.managed:
    - name: /tmp/bacon/installs/falcon-sensor_installer.deb
    # The SOURCE line should be a link to the falcon-sensor installer inside your REPOSITORY > FILES. 
    # Get the salt:// file link from the ACTIONS menu
    - source: salt://files/?????--placeholder--deb-file--?????
    - makedirs: true
    - skip_verify: true
    
# download the CID txt file
download_crowdstrike_cid:
  file.managed:
    # this file will be deleted from the local server at the end of the profile run
    - name: /tmp/bacon/installs/cscid.txt
    # The SOURCE line should be a link to the falcon-sensor CID code inside your REPOSITORY > FILES. 
    # Get the salt:// file link from the ACTIONS menu
    - source: salt://files/?????--placeholder--cid-file--?????
    - makedirs: true
    - skip_verify: true
    
# install CrowdStrike
install_crowdstrike:
  cmd.run:
    - name: dpkg -i /tmp/bacon/installs/falcon-sensor_installer.deb
    - creates: /opt/CrowdStrike/falconctl
    
# Activate CrowdStrike with the CID key
set_crowdstrike_cid:
  cmd.run:
    # In the next line we're using the return of the `cat` function to supply the CID value directly to the activation step
    - name: sudo /opt/CrowdStrike/falconctl -s --cid=$(cat/tmp/bacon/installs/cscid.txt)
    - onchanges:
      - install_crowdstrike
      
# Start CrowdStrike service
start_crowdstrike:
  cmd.run:
    - name: sudo systemctl start falcon-sensor
    - onchanges:
      - set_crowdstrike_cid
      
# Delete the CrowdStrike CID key file from local computer
clear_crowdstrike_cid_file:
  cmd.run:
    - name: sudo rm -f /tmp/bacon/installs/cscid.txt
