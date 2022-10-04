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
# LOCATION: \Computer\Windows Components\Microsoft Defender Antivirus\MAPS\DisableBlockAtFirstSeen.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# This feature ensures the device checks in real time with the Microsoft Active Protection Service (MAPS) before allowing certain content to be run or accessed. If this feature is disabled, the check will not occur, which will lower the protection state of the device.
#     Enabled  The Block at First Sight setting is turned on.
#     Disabled  The Block at First Sight setting is turned off.
#     
#     This feature requires these Group Policy settings to be set as follows:
#     MAPS -> The Join Microsoft MAPS must be enabled or the Block at First Sight feature will not function.
#     MAPS -> The Send file samples when further analysis is required should be set to 1 (Send safe samples) or 3 (Send all samples). Setting to 0 (Always Prompt) will lower the protection state of the device.  Setting to 2 (Never send) means the Block at First Sight feature will not function.
#     Real-time Protection -> The Scan all downloaded files and attachments policy must be enabled or the Block at First Sight feature will not function.
#     Real-time Protection -> Do not enable the Turn off real-time protection policy or the Block at First Sight feature will not function.
Configure the 'Block at First Sight' feature:
  lgpo.set:
  - name: DisableBlockAtFirstSeen
  - setting: Enabled
  - policy_class: Machine
