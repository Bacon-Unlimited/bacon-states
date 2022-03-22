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
