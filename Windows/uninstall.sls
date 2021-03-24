################################################################################
#  
#  Bacon Unlimited
#  __________________
#  
#   [2018] - [2021] Bacon Unlimited 
#   All Rights Reserved.
#  
#  NOTICE:  All information contained herein is, and remains
#  the property of Bacon Unlimited and its suppliers,
#  if any.  The intellectual and technical concepts contained
#  herein are proprietary to Bacon Unlimited
#  and its suppliers and may be covered by U.S. and Foreign Patents,
#  patents in process, and are protected by trade secret or copyright law.
#  Dissemination of this information or reproduction of this material
#  is strictly forbidden unless prior written permission is obtained
#  from Bacon Unlimited.
################################################################################

# This state uninstalls Mozilla Firefox.
# It illustrates the use of requisites in a state.  In this case we'll use the unless
# requisite to make sure the state only runs if Firefox is installed.
# You can learn more about the unless requisite here:  https://docs.saltproject.io/en/latest/ref/states/requisites.html#unless
Uninstall_Firefox:
  # See the documentation for the cmd module here:
  # https://docs.saltproject.io/en/latest/ref/modules/all/salt.modules.cmdmod.html
  cmd.run:
    # note the nested quoting below - This is required since the path contains spaces.
    - name: helper.exe /S
    - cwd: C:\Program Files\Mozilla Firefox\uninstall
    - unless:
      - fun: cmd.powershell
        # Using the cmd.powershell function, we'll run this PowerShell command 
        # that looks through the registry for a program with a display name that
        # matches "Firefox".  This is matching against the names as
        # displayed in Control Panel > Programs > Programs and Features or
        # Settings > Apps > Apps & features.
        # If Firefox is not installed, this will return True and the state won't run.
        # If it is installed, this returns False and the state will run the command.
        cmd: ((gp HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*).DisplayName -Match "Firefox").length -eq 0

################################################################################

# This states uninstalls Google Chrome using the MSI uploaded to Bacon Packages.
# It uses the onlyif requisite to make sure the state only runs if the EXE file for Chrome
# exists at the specified path.
Uninstall_Google_Chrome:
  cmd.run:
    # name is the command we want to run.  This example shows a silent uninstall using msiexec.
    # To get the path to the installer, we're using Jinja to execute a Salt execution module
    # that will cache a file if it's not already cached and return the path.  Quotes are used
    # in case the path contains spaces.  You can learn more about using Jinja in states
    # here:  https://docs.saltproject.io/en/latest/topics/jinja/index.html
    - name:  msiexec /qn /norestart /X "{{ salt['cp.cache_file']('salt://packages/Windows/GoogleChromeStandaloneEnterprise64.msi') }}"
    # The onlyif requisite checks the return code of the command listed.
    # In Windows, when you specify a file the dir command will have a return code
    # of 0 (True in cmd) if the file exists and 1 (False) if it does not exist.
    - onlyif:
      - dir "C:\Program Files\Google\Chrome\Application\chrome.exe"
