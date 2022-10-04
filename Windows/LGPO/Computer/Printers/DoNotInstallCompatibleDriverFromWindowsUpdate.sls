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
# LOCATION: \Computer\Printers\DoNotInstallCompatibleDriverFromWindowsUpdate.sls
#
# SUPPORTED WINDOWS OS
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
