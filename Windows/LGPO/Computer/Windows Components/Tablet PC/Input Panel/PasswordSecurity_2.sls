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
# LOCATION: \Computer\Windows Components\Tablet PC\Input Panel\PasswordSecurity_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# Adjusts password security settings in Touch Keyboard and Handwriting panel (a.k.a. Tablet PC Input Panel in Windows 7 and Windows Vista). These settings include using the on-screen keyboard by default, preventing users from switching to another Input Panel skin (the writing pad or character pad), and not showing what keys are tapped when entering a password.
# 
# Touch Keyboard and Handwriting panel enables you to use handwriting or an on-screen keyboard to enter text, symbols, numbers, or keyboard shortcuts.
# 
# If you enable this policy and choose Low from the drop-down box, password security is set to Low. At this setting, all password security settings are turned off. Users will not be able to configure this setting in the Input Panel Options dialog box. 
# 
# If you enable this policy and choose Medium-Low from the drop-down box, password security is set to Medium-Low. At this setting, when users enter passwords from Input Panel they use the on-screen keyboard by default, skin switching is allowed, and Input Panel displays the cursor and which keys are tapped. Users will not be able to configure this setting in the Input Panel Options dialog box. 
# 
# If you enable this policy and choose Medium from the drop-down box, password security is set to Medium. At this setting, when users enter passwords from Input Panel they use the on-screen keyboard by default, skin switching is not allowed, and Input Panel displays the cursor and which keys are tapped. Users will not be able to configure this setting in the Input Panel Options dialog box. 
# 
# If you enable this policy and choose to Medium-High from the drop-down box, password security is set to Medium-High. At this setting, when users enter passwords from Input Panel they use the on-screen keyboard by default, skin switching is allowed, and Input Panel does not display the cursor or which keys are tapped. Users will not be able to configure this setting in the Input Panel Options dialog box.
# 
# If you enable this policy and choose High from the drop-down box, password security is set to High. At this setting, when users enter passwords from Input Panel they use the on-screen keyboard by default, skin switching is not allowed, and Input Panel does not display the cursor or which keys are tapped. Users will not be able to configure this setting in the Input Panel Options dialog box. 
# 
# If you disable this policy, password security is set to Medium-High. At this setting, when users enter passwords from Input Panel they use the on-screen keyboard by default, skin switching is allowed, and Input Panel does not display the cursor or which keys are tapped. Users will not be able to configure this setting in the Input Panel Options dialog box.
#   
# If you do not configure this policy, password security is set to Medium-High by default. At this setting, when users enter passwords from Input Panel they use the on-screen keyboard by default, skin switching is allowed, and Input Panel does not display the cursor or which keys are tapped. Users will be able to configure this setting on the Advanced tab in Input Panel Options in Windows 7 and Windows Vista.
# 
# Caution: If you lower password security settings, people who can see the users screen might be able to see their passwords.
Turn off password security in Input Panel:
  lgpo.set:
  - name: PasswordSecurity_2
  - setting:
      PasswordSecurity: enum-placeholder
  - policy_class: Machine
