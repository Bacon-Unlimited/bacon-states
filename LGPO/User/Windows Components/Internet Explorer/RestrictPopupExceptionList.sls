# SUPPORTED_IE7
#
# You can allow pop-ups from specific websites by adding the sites to the exception list.
# 
# If you enable this policy setting, the user cannot add websites to or remove websites from the exception list.
# 
# If you disable or do not configure this policy setting, the user can add websites to or remove websites from the exception list.
# 
# Note: You can allow a default list of sites that can open pop-up windows regardless of the Internet Explorer process's Pop-Up Blocker settings by enabling the "Specify pop-up allow list" policy setting.
Prevent managing pop-up exception list:
  lgpo.set:
  - name: RestrictPopupExceptionList
  - setting: Enabled
  - policy_class: User
