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
# LOCATION: \User\Windows Components\Internet Explorer\Branding_NoExternalBranding.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# Prevents branding of Internet programs, such as customization of Internet Explorer and Outlook Express logos and title bars, by another party.
# 
# If you enable this policy, it prevents customization of the browser by another party, such as an Internet service provider or Internet content provider.
# 
# If you disable this policy or do not configure it, users could install customizations from another party-for example, when signing up for Internet services.
# 
# This policy is intended for administrators who want to maintain a consistent browser across an organization.
Disable external branding of Internet Explorer:
  lgpo.set:
  - name: Branding_NoExternalBranding
  - setting: Enabled
  - policy_class: User
