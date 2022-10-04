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
# LOCATION: \Computer\System\Kerberos\HostToRealm.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to specify which DNS host names and which DNS suffixes are mapped to a Kerberos realm.
# 
# If you enable this policy setting, you can view and change the list of DNS host names and DNS suffixes mapped to a Kerberos realm as defined by Group Policy. To view the list of mappings, enable the policy setting and then click the Show button. To add a mapping, enable the policy setting, note the syntax, and then click Show. In the Show Contents dialog box in the Value Name column, type a realm name. In the Value column, type the list of DNS host names and DNS suffixes using the appropriate syntax format. To remove a mapping from the list, click the mapping entry to be removed, and then press the DELETE key. To edit a mapping, remove the current entry from the list and add a new one with different parameters.
# 
# If you disable this policy setting, the host name-to-Kerberos realm mappings list defined by Group Policy is deleted.
# 
# If you do not configure this policy setting, the system uses the host name-to-Kerberos realm mappings that are defined in the local registry, if they exist.
Define host name-to-Kerberos realm mappings:
  lgpo.set:
  - name: HostToRealm
  - setting:
      hosttorealm:
      - placeholder1
      - placeholder2
  - policy_class: Machine
