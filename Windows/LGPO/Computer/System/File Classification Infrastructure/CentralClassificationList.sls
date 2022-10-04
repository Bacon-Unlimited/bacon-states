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
# LOCATION: \Computer\System\File Classification Infrastructure\CentralClassificationList.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting controls which set of properties is available for classifying files on affected computers.
# 
# Administrators can define the properties for the organization by using Active Directory Domain Services (AD DS), and then group these properties into lists. Administrators can supplement these properties on individual file servers by using File Classification Infrastructure, which is part of the File Server Resource Manager role service.
# 
# If you enable this policy setting, you can select which list of properties is available for classification on the affected computers. 
# 
# If you disable or do not configure this policy setting, the Global Resource Property List in AD DS provides the default set of properties.
'File Classification Infrastructure: Specify classification properties list':
  lgpo.set:
  - name: CentralClassificationList
  - setting:
      CentralClassificationListTextElement: text-placeholder
  - policy_class: Machine
