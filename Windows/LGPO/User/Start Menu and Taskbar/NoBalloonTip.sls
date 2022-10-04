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
# LOCATION: \User\Start Menu and Taskbar\NoBalloonTip.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPOrServerOnly
#
# Hides pop-up text on the Start menu and in the notification area.
# 
# When you hold the cursor over an item on the Start menu or in the notification area, the system displays pop-up text providing additional information about the object.
# 
# If you enable this setting, some of this pop-up text is not displayed. The pop-up text affected by this setting includes "Click here to begin" on the Start button, "Where have all my programs gone" on the Start menu, and "Where have my icons gone" in the notification area.
# 
# If you disable this setting or do not configure it, all pop-up text is displayed on the Start menu and in the notification area.
Remove Balloon Tips on Start Menu items:
  lgpo.set:
  - name: NoBalloonTip
  - setting: Enabled
  - policy_class: User
