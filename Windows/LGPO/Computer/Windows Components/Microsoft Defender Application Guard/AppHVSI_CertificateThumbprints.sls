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
# LOCATION: \Computer\Windows Components\Microsoft Defender Application Guard\AppHVSI_CertificateThumbprints.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_NOSERVER_ENTERPRISE_EDUCATION
#
# This policy setting allows certain Root Certificates to be shared with the Microsoft Defender Application Guard container.
# 
# If you enable this setting, certificates with a thumbprint matching the ones specified will be transferred into the container. Multiple certificates can be specified by using a comma to separate the thumbprints for each certificate you want to transfer.
# 
# If you disable or dont configure this setting, certificates are not shared with the Microsoft Defender Application Guard container.
# 
# Example:  b4e72779a8a362c860c36a6461f31e3aa7e58c14,1b1d49f06d2a697a544a1059bd59a7b058cda924
#         
"Allow Microsoft Defender Application Guard to use Root Certificate Authorities from the user\u2019s device":
  lgpo.set:
  - name: AppHVSI_CertificateThumbprints
  - setting:
      AppHVSICertificateThumbprints_TextBox: text-placeholder
  - policy_class: Machine
