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
# LOCATION: \Computer\Windows Components\Windows Security\Systray\Systray_HideSystray.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS5
#
# 
#         This policy setting hides the Windows Security notification area control.
# 
#         The user needs to either sign out and sign in or reboot the computer for this setting to take effect.
# 
#         Enabled:
#         Windows Security notification area control will be hidden.
# 
#         Disabled:
#         Windows Security notification area control will be shown.
# 
#         Not configured:
#         Same as Disabled.
#     
Hide Windows Security Systray:
  lgpo.set:
  - name: Systray_HideSystray
  - setting: Enabled
  - policy_class: Machine
