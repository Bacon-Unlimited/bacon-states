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
# LOCATION: \Computer\System\Recovery\ConfigureWinRESetup.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7Only
#
#     Requirements: Windows 7
#     Description: This policy setting controls whether users can access the options in Recovery (in Control Panel) to restore the computer to the original state or from a user-created system image.
# 
#     If you enable or do not configure this policy setting, the items "Use a system image you created earlier to recover your computer" and "Reinstall Windows" (or "Return your computer to factory condition") appears on the "Advanced recovery methods" page of Recovery (in Control Panel) and will allow the user to restore the computer to the original state or from a user-created system image. This is the default setting.
# 
#     If you disable this policy setting, the items "Use a system image you created earlier to recover your computer" and "Reinstall Windows" (or "Return your computer to factory condition") in Recovery (in Control Panel) will be unavailable. However, with this policy setting disabled, users can still restore the computer to the original state or from a user-created system image by restarting the computer and accessing the System Recovery Options menu, if it is available.
Allow restore of system to default state:
  lgpo.set:
  - name: ConfigureWinRESetup
  - setting: Enabled
  - policy_class: Machine
