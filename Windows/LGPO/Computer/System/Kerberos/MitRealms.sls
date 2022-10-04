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
# LOCATION: \Computer\System\Kerberos\MitRealms.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting configures the Kerberos client so that it can authenticate with interoperable Kerberos V5 realms, as defined by this policy setting.
#       
# If you enable this policy setting, you can view and change the list of interoperable Kerberos V5 realms and their settings. To view the list of interoperable Kerberos V5 realms, enable the policy setting and then click the Show button. To add an interoperable Kerberos V5 realm, enable the policy setting, note the syntax, and then click Show. In the Show Contents dialog box in the Value Name column, type the interoperable Kerberos V5 realm name. In the Value column, type the realm flags and host names of the host KDCs using the appropriate syntax format. To remove an interoperable Kerberos V5 realm Value Name or Value entry from the list, click the entry, and then press the DELETE key. To edit a mapping, remove the current entry from the list and add a new one with different parameters.
# 
# If you disable this policy setting, the interoperable Kerberos V5 realm settings defined by Group Policy are deleted.
# 
# If you do not configure this policy setting, the system uses the interoperable Kerberos V5 realm settings that are defined in the local registry, if they exist.
Define interoperable Kerberos V5 realm settings:
  lgpo.set:
  - name: MitRealms
  - setting:
      MitRealms:
      - placeholder1
      - placeholder2
  - policy_class: Machine
