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
# LOCATION: \Computer\Windows Components\Windows Update\AUPowerManagement_Title.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7ToVistaAndWindows10
#
# Specifies whether the Windows Update will use the Windows Power Management features to automatically wake up the system from sleep, if there are updates scheduled for installation.
# 
# Windows Update will only automatically wake up the system if Windows Update is configured to install updates automatically. If the system is in sleep when the scheduled install time occurs and there are updates to be applied, then Windows Update will use the Windows Power management features to automatically wake the system up to install the updates.
# 
# Windows update will also wake the system up and install an update if an install deadline occurs.
# 
# The system will not wake unless there are updates to be installed. If the system is on battery power, when Windows Update wakes it up, it will not install updates and the system will automatically return to sleep in 2 minutes.
Enabling Windows Update Power Management to automatically wake up the system to install scheduled updates:
  lgpo.set:
  - name: AUPowerManagement_Title
  - setting: Enabled
  - policy_class: Machine
