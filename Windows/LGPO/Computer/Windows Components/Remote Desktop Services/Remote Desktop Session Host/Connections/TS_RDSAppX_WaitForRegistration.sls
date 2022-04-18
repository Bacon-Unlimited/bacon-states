# TS_SUPPORTED_Windows8_Enterprise_AND_Server
#
# This policy setting allows you to specify whether the app registration is completed before showing the Start screen to the user. 
# 
# By default, when a new user signs in to a computer, the Start screen is shown and apps are registered in the background. However, some apps may not work until app registration is complete.
# 
# If you enable this policy setting, user sign-in is blocked for up to 6 minutes to complete the app registration. You can use this policy setting when customizing the Start screen on Remote Desktop Session Host servers. 
# 
# If you disable or do not configure this policy setting, the Start screen is shown and apps are registered in the background.
Suspend user sign-in to complete app registration:
  lgpo.set:
  - name: TS_RDSAppX_WaitForRegistration
  - setting: Enabled
  - policy_class: Machine
