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
# LOCATION: \Computer\Windows Components\Windows Update\AutoUpdateCfg.sls
#
# SUPPORTED WINDOWS OS
# WU_SUPPORTED_XPSP1_or_Win2kSP3_AUOption7_SUPPORTED_Server2016
#
# Specifies whether this computer will receive security updates and other important downloads through the Windows automatic updating service.
# 
# Note: This policy does not apply to Windows RT.
# 
# This setting lets you specify whether automatic updates are enabled on this computer. If the service is enabled, you must select one of the four options in the Group Policy Setting:
# 
#         2 = Notify before downloading and installing any updates.
# 
#         When Windows finds updates that apply to this computer, users will be notified that updates are ready to be downloaded. After going to Windows Update, users can download and install any available updates.
# 
#         3 = (Default setting) Download the updates automatically and notify when they are ready to be installed
# 
#         Windows finds updates that apply to the computer and downloads them in the background (the user is not notified or interrupted during this process). When the downloads are complete, users will be notified that they are ready to install. After going to Windows Update, users can install them.
# 
#         4 = Automatically download updates and install them on the schedule specified below.
# 
#         When "Automatic" is selected as the scheduled install time, Windows will automatically check, download, and install updates. The device will reboot as per Windows default settings unless configured by group policy. (Applies to Windows 10, version 1809 and higher)
# 
#         Specify the schedule using the options in the Group Policy Setting. For version 1709 and above, there is an additional choice of limiting updating to a weekly, bi-weekly, or monthly occurrence. If no schedule is specified, the default schedule for all installations will be every day at 3:00 AM. If any updates require a restart to complete the installation, Windows will restart the computer automatically. (If a user is signed in to the computer when Windows is ready to restart, the user will be notified and given the option to delay the restart.)
# 
#         On Windows 8 and later, you can set updates to install during automatic maintenance instead of a specific schedule. Automatic maintenance will install updates when the computer is not in use and avoid doing so when the computer is running on battery power. If automatic maintenance is unable to install updates for 2 days, Windows Update will install updates right away. Users will then be notified about an upcoming restart, and that restart will only take place if there is no potential for accidental data loss.
# 
#         5 = Allow local administrators to select the configuration mode that Automatic Updates should notify and install updates. (This option has not been carried over to any Win 10 Versions)
# 
#         With this option, local administrators will be allowed to use the Windows Update control panel to select a configuration option of their choice. Local administrators will not be allowed to disable the configuration for Automatic Updates.
# 
#         7 = Notify for install and notify for restart. (Windows Server only)
# 
#         With this option from Windows Server 2016, applicable only to Server SKU devices, local administrators will be allowed to use Windows Update to proceed with installations or reboots manually.
# 
# If the status for this policy is set to Disabled, any updates that are available on Windows Update must be downloaded and installed manually. To do this, search for Windows Update using Start.
# 
# If the status is set to Not Configured, use of Automatic Updates is not specified at the Group Policy level. However, an administrator can still configure Automatic Updates through Control Panel.
Configure Automatic Updates:
  lgpo.set:
  - name: AutoUpdateCfg
  - setting:
      AllowMUUpdateServiceId: boolean-placeholder
      AutoUpdateAutomaticMaintenanceEnabled: boolean-placeholder
      AutoUpdateMode: enum-placeholder
      AutoUpdateSchDay: enum-placeholder
      AutoUpdateSchEveryWeek: boolean-placeholder
      AutoUpdateSchFirstWeek: boolean-placeholder
      AutoUpdateSchFourthWeek: boolean-placeholder
      AutoUpdateSchSecondWeek: boolean-placeholder
      AutoUpdateSchThirdWeek: boolean-placeholder
      AutoUpdateSchTime: enum-placeholder
  - policy_class: Machine
