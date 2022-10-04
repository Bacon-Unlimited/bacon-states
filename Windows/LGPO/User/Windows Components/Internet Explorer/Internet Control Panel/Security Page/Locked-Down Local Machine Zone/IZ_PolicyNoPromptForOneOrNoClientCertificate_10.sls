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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Locked-Down Local Machine Zone\IZ_PolicyNoPromptForOneOrNoClientCertificate_10.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether users are prompted to select a certificate when no certificate or only one certificate exists.
# 
# If you enable this policy setting, Internet Explorer does not prompt users with a "Client Authentication" message when they connect to a Web site that has no certificate or only one certificate.
# 
# If you disable this policy setting, Internet Explorer prompts users with a "Client Authentication" message when they connect to a Web site that has no certificate or only one certificate.
# 
# If you do not configure this policy setting, Internet Explorer prompts users with a Client Authentication message when they connect to a Web site that has no certificate or only one certificate.
Do not prompt for client certificate selection when no certificates or only one certificate exists.:
  lgpo.set:
  - name: IZ_PolicyNoPromptForOneOrNoClientCertificate_10
  - setting:
      IZ_Partname1A04: enum-placeholder
  - policy_class: User
