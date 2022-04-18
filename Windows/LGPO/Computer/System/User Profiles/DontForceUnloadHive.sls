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
