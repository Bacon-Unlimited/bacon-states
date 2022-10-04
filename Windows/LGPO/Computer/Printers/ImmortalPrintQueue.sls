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
# LOCATION: \Computer\Printers\ImmortalPrintQueue.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# Determines whether the domain controller can prune (delete from Active Directory) the printers published by this computer.
# 
#             By default, the pruning service on the domain controller prunes printer objects from Active Directory if the computer that published them does not respond to contact requests. When the computer that published the printers restarts, it republishes any deleted printer objects.
# 
#             If you enable this setting or do not configure it, the domain controller prunes this computer's printers when the computer does not respond.
# 
#             If you disable this setting, the domain controller does not prune this computer's printers. This setting is designed to prevent printers from being pruned when the computer is temporarily disconnected from the network.
# 
#             Note: You can use the "Directory Pruning Interval" and "Directory Pruning Retry" settings to adjust the contact interval and number of contact attempts.
Allow pruning of published printers:
  lgpo.set:
  - name: ImmortalPrintQueue
  - setting: Enabled
  - policy_class: Machine
