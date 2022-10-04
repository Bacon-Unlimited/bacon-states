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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Connection Client\RemoteFX USB Device Redirection\TS_USB_REDIRECTION_DISABLE.sls
#
# SUPPORTED WINDOWS OS
# TS_SUPPORTED_Windows7_OR_SERVER2K8R2_SP1
#
# This policy setting allows you to permit RDP redirection of other supported RemoteFX USB devices from this computer. Redirected RemoteFX USB devices will not be available for local usage on this computer.
# 
# If you enable this policy setting, you can choose to give the ability to redirect other supported RemoteFX USB devices over RDP to all users or only to users who are in the Administrators group on the computer.
# 
# If you disable or do not configure this policy setting, other supported RemoteFX USB devices are not available for RDP redirection by using any user account.
# 
# For this change to take effect, you must restart Windows.
# 
#     
Allow RDP redirection of other supported RemoteFX USB devices from this computer:
  lgpo.set:
  - name: TS_USB_REDIRECTION_DISABLE
  - setting:
      UsbAccessRight: enum-placeholder
  - policy_class: Machine
