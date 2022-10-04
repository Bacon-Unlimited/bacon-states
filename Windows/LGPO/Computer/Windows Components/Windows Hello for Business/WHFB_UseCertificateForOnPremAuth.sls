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
# LOCATION: \Computer\Windows Components\Windows Hello for Business\WHFB_UseCertificateForOnPremAuth.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# Use this policy setting to configure Windows Hello for Business to enroll a sign-in certificate used for on-premises authentication.
# 
# If you enable this policy setting, Windows Hello for Business enrolls a sign-in certificate that is used for on-premises authentication.
# 
# If you disable or do not configure this policy setting, Windows Hello for Business will use a key or a Kerberos ticket (depending on other policy settings) for on-premises authentication.
# 
# NOTE: Disabling or not configuring this policy setting and enabling the "Use Windows Hello for Business" policy setting requires the environment to have one or more Windows Server 2016 domain controllers to prevent Windows Hello for Business authentication from failing.
#         
Use certificate for on-premises authentication:
  lgpo.set:
  - name: WHFB_UseCertificateForOnPremAuth
  - setting: Enabled
  - policy_class: Machine
