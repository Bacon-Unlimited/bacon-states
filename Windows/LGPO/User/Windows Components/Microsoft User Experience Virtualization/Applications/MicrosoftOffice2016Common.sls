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
# LOCATION: \User\Windows Components\Microsoft User Experience Virtualization\Applications\MicrosoftOffice2016Common.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_NOARM
#
# 
# This policy setting configures the synchronization of user settings which are common between the Microsoft Office Suite 2016 applications.
# By default, the user settings which are common between the Microsoft Office Suite 2016 applications synchronize between computers. Use the policy setting to prevent the user settings which are common between the Microsoft Office Suite 2016 applications from synchronization between computers.
# If you enable this policy setting, the user settings which are common between the Microsoft Office Suite 2016 applications continue to synchronize.
# If you disable this policy setting, the user settings which are common between the Microsoft Office Suite 2016 applications are excluded from the synchronization settings. If any of the Microsoft Office Suite 2016 applications are enabled, this policy setting should not be disabled.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Microsoft Office 2016 Common Settings:
  lgpo.set:
  - name: MicrosoftOffice2016Common
  - setting: Enabled
  - policy_class: User
