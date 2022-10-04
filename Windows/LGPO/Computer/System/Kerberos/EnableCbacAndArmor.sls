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
# LOCATION: \Computer\System\Kerberos\EnableCbacAndArmor.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting controls whether a device will request claims and compound authentication for Dynamic Access Control and Kerberos armoring using Kerberos authentication with domains that support these features. 
# If you enable this policy setting, the client computers will request claims, provide information required to create compounded authentication and armor Kerberos messages in domains which support claims and compound authentication for Dynamic Access Control and Kerberos armoring.
# 
# If you disable or do not configure this policy setting, the client devices will not request claims, provide information required to create compounded authentication and armor Kerberos messages. Services hosted on the device will not be able to retrieve claims for clients using Kerberos protocol transition.  
# 
Kerberos client support for claims, compound authentication and Kerberos armoring:
  lgpo.set:
  - name: EnableCbacAndArmor
  - setting: Enabled
  - policy_class: Machine
