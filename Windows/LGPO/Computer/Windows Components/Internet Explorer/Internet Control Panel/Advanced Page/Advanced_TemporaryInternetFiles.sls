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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\Advanced Page\Advanced_TemporaryInternetFiles.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SRVSP1
#
# This policy setting allows you to manage whether Internet Explorer deletes the contents of the Temporary Internet Files folder after all browser windows are closed. This protects against storing dangerous files on the computer, or storing sensitive files that other users could see, in addition to managing total disk space usage.
# 
# If you enable this policy setting, Internet Explorer will delete the contents of the user's Temporary Internet Files folder when all browser windows are closed.
# 
# If you disable this policy setting, Internet Explorer will not delete the contents of the user's Temporary Internet Files folder when browser windows are closed.
# 
# If you do not configure this policy, Internet Explorer will not delete the contents of the Temporary Internet Files folder when browser windows are closed.
Empty Temporary Internet Files folder when browser is closed:
  lgpo.set:
  - name: Advanced_TemporaryInternetFiles
  - setting: Enabled
  - policy_class: Machine
