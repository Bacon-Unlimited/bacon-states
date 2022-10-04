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
# LOCATION: \User\System\Group Policy\EnforcePoliciesOnly.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting prevents administrators from viewing or using Group Policy preferences.
# 
# A Group Policy administration (.adm) file can contain both true settings and preferences. True settings, which are fully supported by Group Policy, must use registry entries in the Software\Policies or Software\Microsoft\Windows\CurrentVersion\Policies registry subkeys. Preferences, which are not fully supported, use registry entries in other subkeys.
# 
# If you enable this policy setting, the "Show Policies Only" command is turned on, and administrators cannot turn it off. As a result, Group Policy Object Editor displays only true settings; preferences do not appear.
# 
# If you disable or do not configure this policy setting, the "Show Policies Only" command is turned on by default, but administrators can view preferences by turning off the "Show Policies Only" command.
# 
# Note: To find the "Show Policies Only" command, in Group Policy Object Editor, click the Administrative Templates folder (either one), right-click the same folder, and then point to "View."
# 
# In Group Policy Object Editor, preferences have a red icon to distinguish them from true settings, which have a blue icon.
Enforce Show Policies Only:
  lgpo.set:
  - name: EnforcePoliciesOnly
  - setting: Enabled
  - policy_class: User
