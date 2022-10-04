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
# LOCATION: \Computer\System\User Profiles\DontForceUnloadHive.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting  controls whether Windows forcefully unloads the user's registry at logoff, even if there are open handles to the per-user registry keys. 
# 
# Note: This policy setting should only be used for cases where you may be running into application compatibility issues due to this specific Windows behavior. It is not recommended to enable this policy by default as it may prevent users from getting an updated version of their roaming user profile.
# 
# If you enable this policy setting, Windows will not forcefully unload the users registry at logoff, but will unload the registry when all open handles to the per-user registry keys are closed.
# 
# If you disable or do not configure this policy setting, Windows will always unload the users registry at logoff, even if there are any open handles to the per-user registry keys at user logoff.
Do not forcefully unload the users registry at user logoff:
  lgpo.set:
  - name: DontForceUnloadHive
  - setting: Enabled
  - policy_class: Machine
