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
# LOCATION: \Computer\Printers\PruningRetries.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# Specifies how many times the pruning service on a domain controller repeats its attempt to contact a computer before pruning the computer's printers.
# 
#             The pruning service periodically contacts computers that have published printers to verify that the printers are still available for use. If a computer does not respond to the contact message, the message is repeated for the specified number of times. If the computer still fails to respond, then the pruning service "prunes" (deletes from Active Directory) printer objects the computer has published.
# 
#             By default, the pruning service contacts computers every eight hours and allows two retries before deleting printers from Active Directory. You can use this setting to change the number of retries.
# 
#             If you enable this setting, you can change the interval between attempts.
# 
#             If you do not configure or disable this setting, the default values are used.
# 
#             Note: This setting is used only on domain controllers.
Directory pruning retry:
  lgpo.set:
  - name: PruningRetries
  - setting:
      PruningRetriesTitle: enum-placeholder
  - policy_class: Machine
