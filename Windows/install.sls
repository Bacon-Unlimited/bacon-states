##os: windows
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# This state installs Mozilla Firefox using an EXE that has been uploaded to Bacon Packages.
# It illustrates the use of requisites in a state.  In this case we'll use the unless
# requisite to make sure the state only runs if Firefox is not installed.
# You can learn more about the unless requisite here:  https://docs.saltproject.io/en/latest/ref/states/requisites.html#unless
Install_Firefox_86.0.1_x64:
  # See the documentation for the cmd module here:
  # https://docs.saltproject.io/en/latest/ref/modules/all/salt.modules.cmdmod.html
  cmd.script:
    - source: salt://packages/Windows/Firefox Setup 86.0.1.exe
    - args: /S
    - unless:
      - fun: cmd.powershell
        # Using the cmd.powershell function, we'll run this PowerShell command 
        # that looks through the registry for a program with a display name that
        # matches "Firefox 86.0.1".  This is matching against the names as
        # displayed in Control Panel > Programs > Programs and Features or
        # Settings > Apps > Apps & features.
        # If Firefox 86.0.1 is installed, this will return True and the state won't run.
        # If not, this returns False and the state will run the EXE with the flag "/S".
        cmd: ((gp HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*).DisplayName -Match "Firefox 86.0.1").length -gt 0

################################################################################

# The following example installs Google Chrome Enterprise using an MSI that has been uploaded to Bacon Packages.
# This state shows how you can run a command only if a file does not exist by using the "creates"
# parameter in the cmd.run function of the cmd state module.

Install_Google_Chrome:
  cmd.run:
    # name is the command we want to run.  This example shows a silent install using msiexec.
    # To get the path to the installer, we're using Jinja to execute a Salt execution module
    # that will cache a file if it's not already cached and return the path.  Quotes are used
    # in case the path contains spaces.  You can learn more about using Jinja in states
    # here:  https://docs.saltproject.io/en/latest/topics/jinja/index.html
    - name: msiexec /qn /norestart /I "{{ salt['cp.cache_file']('salt://packages/Windows/GoogleChromeStandaloneEnterprise64.msi') }}"
    # The creates parameter tells Salt to only run the command above if the file specified here does not exist.
    # Salt handles quoting for you, so you do not need to quote this path even though it contains spaces.
    - creates: C:\Program Files\Google\Chrome\Application\chrome.exe
