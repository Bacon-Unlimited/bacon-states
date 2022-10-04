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
# LOCATION: \User\System\DisableRegedit.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# Disables the Windows registry editor Regedit.exe.
# 
# If you enable this policy setting and the user tries to start Regedit.exe, a message appears explaining that a policy setting prevents the action.
# 
# If you disable this policy setting or do not configure it, users can run Regedit.exe normally.
# 
# To prevent users from using other administrative tools, use the "Run only specified Windows applications" policy setting.
Prevent access to registry editing tools:
  lgpo.set:
  - name: DisableRegedit
  - setting:
      DisableRegeditMode: enum-placeholder
  - policy_class: User
