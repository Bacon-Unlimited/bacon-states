# windows:SUPPORTED_Windows7
#
# This policy setting allows you to manage where client computers search for Point and Printer drivers.
# 
# If you enable this policy setting, the client computer will continue to search for compatible Point and Print drivers from Windows Update after it fails to find the compatible driver from the local driver store and the server driver cache.
# 
# If you disable this policy setting, the client computer will only search the local driver store and server driver cache for compatible Point and Print drivers. If it is unable to find a compatible driver, then the Point and Print connection will fail.
# 
# This policy setting is not configured by default, and the behavior depends on the version of Windows that you are using.
# By default, Windows Ultimate, Professional and Home SKUs will continue to search for compatible Point and Print drivers from Windows Update, if needed. However, you must explicitly enable this policy setting for other versions of Windows (for example Windows Enterprise, and all versions of Windows Server 2008 R2 and later) to have the same behavior.
Extend Point and Print connection to search Windows Update:
  lgpo.set:
  - name: DoNotInstallCompatibleDriverFromWindowsUpdate
  - setting: Enabled
  - policy_class: Machine
