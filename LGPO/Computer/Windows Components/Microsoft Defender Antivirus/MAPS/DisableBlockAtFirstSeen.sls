# windows:SUPPORTED_Windows_10_0
#
# This feature ensures the device checks in real time with the Microsoft Active Protection Service (MAPS) before allowing certain content to be run or accessed. If this feature is disabled, the check will not occur, which will lower the protection state of the device.
#     Enabled – The Block at First Sight setting is turned on.
#     Disabled – The Block at First Sight setting is turned off.
#     
#     This feature requires these Group Policy settings to be set as follows:
#     MAPS -> The “Join Microsoft MAPS” must be enabled or the “Block at First Sight” feature will not function.
#     MAPS -> The “Send file samples when further analysis is required” should be set to 1 (Send safe samples) or 3 (Send all samples). Setting to 0 (Always Prompt) will lower the protection state of the device.  Setting to 2 (Never send) means the “Block at First Sight” feature will not function.
#     Real-time Protection -> The “Scan all downloaded files and attachments” policy must be enabled or the “Block at First Sight” feature will not function.
#     Real-time Protection -> Do not enable the “Turn off real-time protection” policy or the “Block at First Sight” feature will not function.
Configure the 'Block at First Sight' feature:
  lgpo.set:
  - name: DisableBlockAtFirstSeen
  - setting: Enabled
  - policy_class: Machine
