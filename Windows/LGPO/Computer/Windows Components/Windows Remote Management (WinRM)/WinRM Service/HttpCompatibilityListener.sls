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
# LOCATION: \Computer\Windows Components\Windows Remote Management (WinRM)\WinRM Service\HttpCompatibilityListener.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting turns on or turns off an HTTP listener created for backward compatibility purposes in the Windows Remote Management (WinRM) service.
# 
#         If you enable this policy setting, the HTTP listener always appears.
# 
#         If you disable or do not configure this policy setting, the HTTP listener never appears.
# 
#         When certain port 80 listeners are migrated to WinRM 2.0, the listener port number changes to 5985.
# 
#         A listener might be automatically created on port 80 to ensure backward compatibility.
Turn On Compatibility HTTP Listener:
  lgpo.set:
  - name: HttpCompatibilityListener
  - setting: Enabled
  - policy_class: Machine
