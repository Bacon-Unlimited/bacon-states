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
# LOCATION: \Computer\System\User Profiles\MachineProfilePath.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies whether Windows should use the specified network path as the roaming user profile path for all users logging onto this computer.
# 
# To use this policy setting, type the path to the network share in the form \\Computername\Sharename\. It is recommended to use a path such as \\Computername\Sharename\%USERNAME% to give each user an individual profile folder. If not specified, all users logging onto this computer will use the same roaming profile folder as specified by this policy. You need to ensure that you have set the appropriate security on the folder to allow all users to access the profile.
# 
# If you enable this policy setting, all users logging on this computer will use the roaming profile path specified in this policy.
# 
# If you disable or do not configure this policy setting, users logging on this computer will use their local profile or standard roaming user profile.
# 
# Note: There are four ways to configure a roaming profile for a user. Windows reads profile configuration in the following order and uses the first configured policy setting it reads.
# 
# 1. Terminal Services roaming profile path specified by Terminal Services policy
# 2. Terminal Services roaming profile path specified by the user object
# 3. A per-computer roaming profile path specified in this policy
# 4. A per-user roaming profile path specified in the user object
Set roaming profile path for all users logging onto this computer:
  lgpo.set:
  - name: MachineProfilePath
  - setting:
      MachineProfilePath_Message: text-placeholder
  - policy_class: Machine
