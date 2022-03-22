# TS_SUPPORTED_ONLY_LEGACY
#
# If you enable this policy setting, administrators can interact with a user's Remote Desktop Services session based on the option selected. Select the desired level of control and permission from the options list:
# 
# 1. No remote control allowed: Disallows an administrator to use remote control or view a remote user session.
# 2. Full Control with user's permission: Allows the administrator to interact with the session, with the user's consent.
# 3. Full Control without user's permission: Allows the administrator to interact with the session, without the user's consent.
# 4. View Session with user's permission: Allows the administrator to watch the session of a remote user with the user's consent. 
# 5. View Session without user's permission: Allows the administrator to watch the session of a remote user without the user's consent.
# 
# If you disable this policy setting, administrators can interact with a user's Remote Desktop Services session, with the user's consent.
Set rules for remote control of Remote Desktop Services user sessions:
  lgpo.set:
  - name: TS_RemoteControl_1
  - setting:
      TS_RemoteControl_Levels: enum-placeholder
  - policy_class: User
