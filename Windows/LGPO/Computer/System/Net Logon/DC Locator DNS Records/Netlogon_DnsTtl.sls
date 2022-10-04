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
# LOCATION: \Computer\System\Net Logon\DC Locator DNS Records\Netlogon_DnsTtl.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies the value for the Time-To-Live (TTL) field in SRV resource records that are registered by the Net Logon service. These DNS records are dynamically registered, and they are used to locate the domain controller (DC).
# 
# To specify the TTL for DC Locator DNS records, click Enabled, and then enter a value in seconds (for example, the value "900" is 15 minutes).
# 
# If you do not configure this policy setting, it is not applied to any DCs, and DCs use their local configuration.
Set TTL  in the DC Locator DNS Records:
  lgpo.set:
  - name: Netlogon_DnsTtl
  - setting:
      Netlogon_DnsTtlLabel: decimal-placeholder
  - policy_class: Machine
