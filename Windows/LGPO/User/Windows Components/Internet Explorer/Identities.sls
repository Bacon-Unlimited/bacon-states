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
# LOCATION: \User\Windows Components\Internet Explorer\Identities.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5_6
#
# Prevents users from configuring unique identities by using Identity Manager.
# 
# Identity Manager enables users to create multiple accounts, such as e-mail accounts, on the same computer. Each user has a unique identity, with a different password and different program preferences.
# 
# If you enable this policy, users will not be able to create new identities, manage existing identities, or switch identities. The Switch Identity option will be removed from the File menu in Address Book.
# 
# If you disable this policy or do not configure it, users can set up and change identities.
'Identity Manager: Prevent users from using Identities':
  lgpo.set:
  - name: Identities
  - setting: Enabled
  - policy_class: User
