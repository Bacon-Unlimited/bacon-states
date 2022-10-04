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
# LOCATION: \Computer\Network\DNS Client\DNS_PrimaryDnsSuffix.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# Specifies the primary DNS suffix used by computers in DNS name registration and DNS name resolution.
# 
# To use this policy setting, click Enabled and enter the entire primary DNS suffix you want to assign. For example: microsoft.com.
# 
# Important: In order for changes to this policy setting to be applied on computers that receive it, you must restart Windows.
# 
# If you enable this policy setting, it supersedes the primary DNS suffix configured in the DNS Suffix and NetBIOS Computer Name dialog box using the System control panel.
# 
# You can use this policy setting to prevent users, including local administrators, from changing the primary DNS suffix.
# 
# If you disable this policy setting, or if you do not configure this policy setting, each computer uses its local primary DNS suffix, which is usually the DNS name of Active Directory domain to which it is joined.
Primary DNS suffix:
  lgpo.set:
  - name: DNS_PrimaryDnsSuffix
  - setting:
      DNS_PrimaryDnsSuffixBox: text-placeholder
  - policy_class: Machine
