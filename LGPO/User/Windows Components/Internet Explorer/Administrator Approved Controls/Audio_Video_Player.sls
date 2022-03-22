# SUPPORTED_IE5
#
# Designates the Audio/Video Player ActiveX control as administrator-approved.
# 
# This control is used for playing sounds, videos, and other media.
# 
# If you enable this policy, this control can be run in security zones in which you specify that administrator-approved controls can be run.
# 
# If you disable this policy or do not configure it, this control will not be designated as administrator-approved.
# 
# To specify how administrator-approved controls are handled for each security zone, carry out the following steps:
# 
# 1. In Group Policy, click User Configuration, click Internet Explorer Maintenance, and then click Security.
# 
# 2. Double-click Security Zones and Content Ratings, click Import the Current Security Zones Settings, and then click Modify Settings.
# 
# 3. Select the content zone in which you want to manage ActiveX controls, and then click Custom Level.
# 
# 4. In the Run ActiveX Controls and Plug-ins area, click Administrator Approved.
Audio/Video Player:
  lgpo.set:
  - name: Audio_Video_Player
  - setting:
      ActiveMovie_Control: boolean-placeholder
      Media_Control: boolean-placeholder
  - policy_class: User
