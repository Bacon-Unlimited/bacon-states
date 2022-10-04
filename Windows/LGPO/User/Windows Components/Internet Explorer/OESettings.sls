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
# LOCATION: \User\Windows Components\Internet Explorer\OESettings.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6ONLY
#
# Allows Administrators to enable and disable the ability for Outlook Express users to save or open attachments that can potentially contain a virus.
# 
# If you check the block attachments setting, users will be unable to open or save attachments that could potentially contain a virus.  Users will not be able to disable the blocking of attachments in options.
# 
# If the block attachments setting is not checked, the user can specify to enable or disable the blocking of attachments in options.
Configure Outlook Express:
  lgpo.set:
  - name: OESettings
  - setting:
      OEVirus: boolean-placeholder
  - policy_class: User
