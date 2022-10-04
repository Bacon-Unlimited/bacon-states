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
# LOCATION: \User\Start Menu and Taskbar\NoPinnedPrograms.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7ToXP
#
# If you enable this setting, the "Pinned Programs" list is removed from the Start menu. Users cannot pin programs to the Start menu. 
# 
# In Windows XP and Windows Vista, the Internet and email checkboxes are removed from the 'Customize Start Menu' dialog. 
# 
# If you disable this setting or do not configure it, the "Pinned Programs" list remains on the Start menu. Users can pin and unpin programs in the Start Menu.
Remove pinned programs list from the Start Menu:
  lgpo.set:
  - name: NoPinnedPrograms
  - setting: Enabled
  - policy_class: User
