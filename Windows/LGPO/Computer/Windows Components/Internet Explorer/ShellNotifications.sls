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
# LOCATION: \Computer\Windows Components\Internet Explorer\ShellNotifications.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5_6
#
# Specifies that programs using the Microsoft Software Distribution Channel will not notify users when they install new components. The Software Distribution Channel is a means of updating software dynamically on users' computers by using Open Software Distribution (.osd) technologies.
# 
# If you enable this policy, users will not be notified if their programs are updated using Software Distribution Channels.
# 
# If you disable this policy or do not configure it, users will be notified before their programs are updated.
# 
# This policy is intended for administrators who want to use Software Distribution Channels to update their users' programs without user intervention.
Disable software update shell notifications on program launch:
  lgpo.set:
  - name: ShellNotifications
  - setting: Enabled
  - policy_class: Machine
