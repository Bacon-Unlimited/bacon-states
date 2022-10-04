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
# LOCATION: \Computer\Printers\PruningInterval.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# Specifies how often the pruning service on a domain controller contacts computers to verify that their printers are operational.
# 
#             The pruning service periodically contacts computers that have published printers. If a computer does not respond to the contact message (optionally, after repeated attempts), the pruning service "prunes" (deletes from Active Directory) printer objects the computer has published.
# 
#             By default, the pruning service contacts computers every eight hours and allows two repeated contact attempts before deleting printers from Active Directory.
# 
#             If you enable this setting, you can change the interval between contact attempts.
# 
#             If you do not configure or disable this setting the default values will be used.
# 
#             Note: This setting is used only on domain controllers.
Directory pruning interval:
  lgpo.set:
  - name: PruningInterval
  - setting:
      PruningIntervalTitle: enum-placeholder
  - policy_class: Machine
