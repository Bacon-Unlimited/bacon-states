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
# LOCATION: \User\Windows Components\Internet Explorer\Security Features\Binary Behavior Security Restriction\IESF_ENABLE_MD2_MD4.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE9
#
# This policy setting allows you to manage whether Internet Explorer 9 can install ActiveX controls and other binaries signed with MD2 and MD4 signing technologies. Internet Explorer 9 does not support MD2 and MD4 signing technologies by default, because they are not as secure as other technologies.
# 
# If you enable this policy setting, Internet Explorer 9 installs binaries signed by MD2 and MD4 signing technologies.
# 
# If you disable or do not configure this policy setting, Internet Explorer 9 does not install binaries signed by MD2 and MD4 signing technologies.
Install binaries signed by MD2 and MD4 signing technologies:
  lgpo.set:
  - name: IESF_ENABLE_MD2_MD4
  - setting: Enabled
  - policy_class: User
