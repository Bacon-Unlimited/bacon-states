# windows:SUPPORTED_Windows7ToXP
#
# If you enable this setting, the "Pinned Programs" list is removed from the Start menu. Users cannot pin programs to the Start menu. 
# 
# In Windows XP and Windows Vista, the Internet and email checkboxes are removed from the 'Customize Start Menu' dialog. 
# 
# If you disable this setting or do not configure it, the "Pinned Programs" list remains on the Start menu. Users can pin and unpin programs in the Start Menu.
Remove pinned programs list from the Start Menu:
  lgpo.set:
  - name: NoPinnedPrograms
  - setting: Enabled
  - policy_class: User
