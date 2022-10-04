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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\RD Connection Broker\TS_SD_ClustName.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_WindowsNET_Enterprise
#
# This policy setting allows you to specify the name of a farm to join in RD Connection Broker. RD Connection Broker uses the farm name to determine which RD Session Host servers are in the same RD Session Host server farm. Therefore, you must use the same farm name for all RD Session Host servers in the same load-balanced farm. The farm name does not have to correspond to a name in Active Directory Domain Services.
# 
# If you specify a new farm name, a new farm is created in RD Connection Broker. If you specify an existing farm name, the server joins that farm in RD Connection Broker.
# 
# If you enable this policy setting, you must specify the name of a farm in RD Connection Broker.
# 
# If you disable or do not configure this policy setting, the farm name is not specified at the Group Policy level. 
# 
# Notes:
# 
#      1. This policy setting is not effective unless both the Join RD Connection Broker and the Configure RD Connection Broker server name policy settings are enabled and configured by using Group Policy.
# 
#      2. For Windows Server 2008, this policy setting is supported on at least Windows Server 2008 Standard.
# 
Configure RD Connection Broker farm name:
  lgpo.set:
  - name: TS_SD_ClustName
  - setting:
      TS_SD_ClustName: text-placeholder
  - policy_class: Machine
