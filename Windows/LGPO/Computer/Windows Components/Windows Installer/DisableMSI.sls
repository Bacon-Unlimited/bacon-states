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
# LOCATION: \Computer\Windows Components\Windows Installer\DisableMSI.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting restricts the use of Windows Installer.
# 
# If you enable this policy setting, you can prevent users from installing software on their systems or permit users to install only those programs offered by a system administrator. You can use the options in the Disable Windows Installer box to establish an installation setting.
# 
# --   The "Never" option indicates Windows Installer is fully enabled. Users can install and upgrade software. This is the default behavior for Windows Installer on Windows 2000 Professional, Windows XP Professional and Windows Vista when the policy is not configured.
# 
# --   The "For non-managed applications only" option permits users to install only those programs that a system administrator assigns (offers on the desktop) or publishes (adds them to Add or Remove Programs). This is the default behavior of Windows Installer on Windows Server 2003 family when the policy is not configured.
# 
# --   The "Always" option indicates that Windows Installer is disabled.
# 
# This policy setting affects Windows Installer only. It does not prevent users from using other methods to install and upgrade programs.
Turn off Windows Installer:
  lgpo.set:
  - name: DisableMSI
  - setting:
      DisableMSI: enum-placeholder
  - policy_class: Machine
