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
