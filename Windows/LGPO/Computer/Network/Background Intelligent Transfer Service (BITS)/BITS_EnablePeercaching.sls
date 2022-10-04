####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\Network\Background Intelligent Transfer Service (BITS)\BITS_EnablePeercaching.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting determines if the Background Intelligent Transfer Service (BITS) peer caching feature is enabled on a specific computer.  By default, the files in a BITS job are downloaded only from the origin server specified by the job's owner.
# 
#           If BITS peer caching is enabled, BITS caches downloaded files and makes them available to other BITS peers. When transferring a download job, BITS first requests the files for the job from its peers in the same IP subnet. If none of the peers in the subnet have the requested files, BITS downloads them from the origin server.
# 
#           If you enable this policy setting, BITS downloads files from peers, caches the files, and responds to content requests from peers.  Using the "Do not allow the computer to act as a BITS peer caching server" and "Do not allow the computer to act as a BITS peer caching client" policy settings, it is possible to control BITS peer caching functionality at a more detailed level. However, it should be noted that the "Allow BITS peer caching" policy setting must be enabled for the other two policy settings to have any effect.
# 
#           If you disable or do not configure this policy setting, the BITS peer caching feature will be disabled, and BITS will download files directly from the origin server.
Allow BITS Peercaching:
  lgpo.set:
  - name: BITS_EnablePeercaching
  - setting: Enabled
  - policy_class: Machine
