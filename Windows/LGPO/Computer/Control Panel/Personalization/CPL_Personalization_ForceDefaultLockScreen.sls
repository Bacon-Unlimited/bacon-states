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
# LOCATION: \Computer\Control Panel\Personalization\CPL_Personalization_ForceDefaultLockScreen.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This setting allows you to force a specific default lock screen and logon image by entering the path (location) of the image file. The same image will be used for both the lock and logon screens.
# 
# This setting lets you specify the default lock screen and logon image shown when no user is signed in, and also sets the specified image as the default for all users (it replaces the inbox default image).
# 
# To use this setting, type the fully qualified path and name of the file that stores the default lock screen and logon image. You can type a local path, such as C:\Windows\Web\Screen\img104.jpg or a UNC path, such as \\Server\Share\Corp.jpg.
# 
# This can be used in conjunction with the "Prevent changing lock screen and logon image" setting to always force the specified lock screen and logon image to be shown.
# 
# Note: This setting only applies to Enterprise, Education, and Server SKUs.
Force a specific default lock screen and logon image:
  lgpo.set:
  - name: CPL_Personalization_ForceDefaultLockScreen
  - setting:
      LockScreenImage: text-placeholder
      LockScreenOverlaysDisabled: boolean-placeholder
  - policy_class: Machine
