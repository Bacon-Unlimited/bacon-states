# windows:SUPPORTED_Windows7
#
# 
# Disables suggesting recent queries for the Search Box and prevents entries into the Search Box from being stored in the registry for future references.
# 
# File Explorer shows suggestion pop-ups as users type into the Search Box.  These suggestions are based on their past entries into the Search Box.
# 
# Note: If you enable this policy, File Explorer will not show suggestion pop-ups as users type into the Search Box, and it will not store Search Box entries into the registry for future references.  If the user types a property, values that match this property will be shown but no data will be saved in the registry or re-shown on subsequent uses of the search box.
#       
Turn off display of recent search entries in the File Explorer search box:
  lgpo.set:
  - name: DisableSearchBoxSuggestions
  - setting: Enabled
  - policy_class: User
