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
# LOCATION: \User\Desktop\Active Directory\AD_QueryLimit.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# Specifies the maximum number of objects the system displays in response to a command to browse or search Active Directory. This setting affects all browse displays associated with Active Directory, such as those in Local Users and Groups, Active Directory Users and Computers, and dialog boxes used to set permissions for user or group objects in Active Directory.
# 
# If you enable this setting, you can use the "Number of objects returned" box to limit returns from an Active Directory search.
# 
# If you disable this setting or do not configure it, the system displays up to 10,000 objects. This consumes approximately 2 MB of memory or disk space.
# 
# This setting is designed to protect the network and the domain controller from the effect of expansive searches.
Maximum size of Active Directory searches:
  lgpo.set:
  - name: AD_QueryLimit
  - setting:
      AD_QueryLimit_Box: decimal-placeholder
  - policy_class: User
