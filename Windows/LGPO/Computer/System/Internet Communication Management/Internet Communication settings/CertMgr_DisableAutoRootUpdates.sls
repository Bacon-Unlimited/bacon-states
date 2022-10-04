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
# LOCATION: \Computer\System\Internet Communication Management\Internet Communication settings\CertMgr_DisableAutoRootUpdates.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2_Or_WindowsNETSP1
#
# This policy setting specifies whether to automatically update root certificates using the Windows Update website. 
# 
# Typically, a certificate is used when you use a secure website or when you send and receive secure email. Anyone can issue certificates, but to have transactions that are as secure as possible, certificates must be issued by a trusted certificate authority (CA). Microsoft has included a list in Windows XP and other products of companies and organizations that it considers trusted authorities.
# 
# If you enable this policy setting, when you are presented with a certificate issued by an untrusted root authority, your computer will not contact the Windows Update website to see if Microsoft has added the CA to its list of trusted authorities.
# 
# If you disable or do not configure this policy setting, your computer will contact the Windows Update website.
Turn off Automatic Root Certificates Update:
  lgpo.set:
  - name: CertMgr_DisableAutoRootUpdates
  - setting: Enabled
  - policy_class: Machine
