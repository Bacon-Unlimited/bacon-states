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
# LOCATION: \User\Windows Components\Microsoft Management Console\Restricted\Permitted snap-ins\MMC_DFS.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting permits or prohibits the use of this snap-in. 
# 
# If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console. 
# 
# If you disable this policy setting, the snap-in is prohibited and cannot be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in. 
# 
# If this policy setting is not configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited. 
# 
# --  If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users cannot use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting is not configured or disabled, this snap-in is prohibited. 
# 
# --  If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting is not configured or enabled, the snap-in is permitted. 
# 
# When a snap-in is prohibited, it does not appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in does not appear.
Distributed File System:
  lgpo.set:
  - name: MMC_DFS
  - setting: Enabled
  - policy_class: User
