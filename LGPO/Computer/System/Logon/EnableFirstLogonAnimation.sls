# windows:SUPPORTED_Windows8
#
# This policy setting allows you to control whether users see the first sign-in animation when signing in to the computer for the first time.  This applies to both the first user of the computer who completes the initial setup and users who are added to the computer later.  It also controls if Microsoft account users will be offered the opt-in prompt for services during their first sign-in.
# 
# If you enable this policy setting, Microsoft account users will see the opt-in prompt for services, and users with other accounts will see the sign-in animation.
# 
# If you disable this policy setting, users will not see the animation and Microsoft account users will not see the opt-in prompt for services.
# 
# If you do not configure this policy setting, the user who completes the initial Windows setup will see the animation during their first sign-in. If the first user had already completed the initial setup and this policy setting is not configured, users new to this computer will not see the animation.
# 
#         Note: The first sign-in animation will not be shown on Server, so this policy will have no effect.
#       
'Show first sign-in animation ':
  lgpo.set:
  - name: EnableFirstLogonAnimation
  - setting: Enabled
  - policy_class: Machine
