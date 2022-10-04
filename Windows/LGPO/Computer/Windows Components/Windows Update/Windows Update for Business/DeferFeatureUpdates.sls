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
# LOCATION: \Computer\Windows Components\Windows Update\Windows Update for Business\DeferFeatureUpdates.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_NOARM
#
# Enable this policy to specify the level of Preview Build or Feature Updates to receive, and when.
# 
# * Preview Build - Fast: Devices set to this level will be the first to receive new builds of Windows with features not yet available to the general public. Select Fast to participate in identifying and reporting issues to Microsoft, and provide suggestions on new functionality.
# * Preview Build - Slow: Devices set to this level receive new builds of Windows before they are available to the general public, but at a slower cadence than those set to Fast, and with changes and fixes identified in earlier builds.
# * Release Preview: Receive builds of Windows just before Microsoft releases them to the general public.
# * Semi-Annual Channel: Receive feature updates when they are released to the general public.
# 
# The following Windows Readiness levels have been deprecated and are only applicable to 1809 and below:
# * Semi-Annual Channel (Targeted) for 1809 and below: Feature updates have been released.
# * Semi-Annual Channel for 1809 and below: Feature updates have been declared Semi-Annual Channel, a designation indicating the release is ready for broad deployment.
# Please review the release information page at http://aka.ms/ReleaseInformationPage for the Semi-Annual Channel (Targeted) and Semi-Annual Channel release dates.
# 
# When selecting a Preview Build:
#     - You can defer receiving Preview Builds for up to 14 days.
#     - To prevent Preview Builds from being received on their scheduled time, you can temporarily pause them. The pause will remain in effect for 35 days from the start time provided.
#     - To resume receiving Feature Updates which are paused, clear the start date field.
# 
# Preview Build enrollment requires a telemetry level setting of 2 or higher and your domain registered on insider.windows.com. For additional information on Preview Builds, see: https://aka.ms/wipforbiz
# 
# When Selecting Semi-Annual Channel:
#     - You can defer receiving Feature Updates for up to 365 days.
#     - To prevent Feature Updates from being received on their scheduled time, you can temporarily pause them. The pause will remain in effect for 35 days from the start time provided.
#     - To resume receiving Feature Updates which are paused, clear the start date field.
# 
# If you disable or do not configure this policy, Windows Update will not alter its behavior.
Select when Preview Builds and Feature Updates are received:
  lgpo.set:
  - name: DeferFeatureUpdates
  - setting:
      BranchReadinessLevelId: enum-placeholder
      DeferFeatureUpdatesPeriodId: decimal-placeholder
      PauseFeatureUpdatesStartId: text-placeholder
  - policy_class: Machine
