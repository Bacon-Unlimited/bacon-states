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
# LOCATION: \Computer\System\Net Logon\DC Locator DNS Records\Netlogon_AddressTypeReturned.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting detremines the type of IP address that is returned for a domain controller. The DC Locator APIs return the IP address of the DC with the other parts of information. Before the support of IPv6, the returned DC IP address was IPv4. But with the support of IPv6, the DC Locator APIs can return IPv6 DC address. The returned IPv6 DC address may not be correctly handled by some of the existing applications. So this policy is provided to support such scenarios.
# 
# By default, DC Locator APIs can return IPv4/IPv6 DC address. But if some applications are broken due to the returned IPv6 DC address, this policy can be used to disable the default behavior and enforce to return only IPv4 DC address. Once applications are fixed, this policy can be used to enable the default behavior.
# 
# If you enable this policy setting, DC Locator APIs can return IPv4/IPv6 DC address. This is the default behavior of the DC Locator.
# 
# If you disable this policy setting, DC Locator APIs will ONLY return IPv4 DC address if any. So if the domain controller supports both IPv4 and IPv6 addresses, DC Locator APIs will return IPv4 address. But if the domain controller supports only IPv6 address, then DC Locator APIs will fail.
# 
# If you do not configure this policy setting, DC Locator APIs can return IPv4/IPv6 DC address. This is the default behavior of the DC Locator.
Return domain controller address type:
  lgpo.set:
  - name: Netlogon_AddressTypeReturned
  - setting: Enabled
  - policy_class: Machine
