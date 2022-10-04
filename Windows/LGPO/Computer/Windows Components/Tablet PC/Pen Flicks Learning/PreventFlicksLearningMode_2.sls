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
# LOCATION: \Computer\Windows Components\Tablet PC\Pen Flicks Learning\PreventFlicksLearningMode_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7ToVista
#
# Makes pen flicks learning mode unavailable.
# 
# If you enable this policy, pen flicks are still available but learning mode is not. Pen flicks are off by default and can be turned on system-wide, but cannot be restricted to learning mode applications. This means that the pen flicks training triggers in Internet Explorer are disabled and that the pen flicks notification will never be displayed. However, pen flicks, the pen flicks tray icon and pen flicks training (that can be accessed through CPL) are still available.  Conceptually this policy is a subset of the Disable pen flicks policy.
# 
# If you disable or do not configure this policy, all the features described above will be available.
Prevent Flicks Learning Mode:
  lgpo.set:
  - name: PreventFlicksLearningMode_2
  - setting: Enabled
  - policy_class: Machine
