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
# LOCATION: \Computer\Windows Components\Windows Hello for Business\WHFB_UseCloudTrustForOnPremAuth.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# Use this policy setting to configure Windows Hello for Business to use Azure AD Kerberos for on-premises authentication.
# 
# If you enable this policy setting, Windows Hello for Business will use a Kerberos ticket retrieved from authenticating to Azure for on-premises authentication.
# 
# If you disable or do not configure this policy setting, Windows Hello for Business will use a key or certificate (depending on other policy settings) for on-premises authentication. 
#  
# NOTE: An environment that enables both this policy setting, and the "Use Windows Hello for Business" policy setting requires one or more Windows Server 2016 domain controllers. Otherwise, Windows Hello for Business authentication will fail.
# 
# This policy is only supported on Windows 10, version 21H2 and later.
#         
Use cloud trust for on-premises authentication:
  lgpo.set:
  - name: WHFB_UseCloudTrustForOnPremAuth
  - setting: Enabled
  - policy_class: Machine
