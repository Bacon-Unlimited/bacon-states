# SUPPORTED_IE5_6
#
# Prevents users from configuring unique identities by using Identity Manager.
# 
# Identity Manager enables users to create multiple accounts, such as e-mail accounts, on the same computer. Each user has a unique identity, with a different password and different program preferences.
# 
# If you enable this policy, users will not be able to create new identities, manage existing identities, or switch identities. The Switch Identity option will be removed from the File menu in Address Book.
# 
# If you disable this policy or do not configure it, users can set up and change identities.
'Identity Manager: Prevent users from using Identities':
  lgpo.set:
  - name: Identities
  - setting: Enabled
  - policy_class: User
