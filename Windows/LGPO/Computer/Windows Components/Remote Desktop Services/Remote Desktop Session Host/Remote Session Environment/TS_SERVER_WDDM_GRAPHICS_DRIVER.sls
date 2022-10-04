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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment\TS_SERVER_WDDM_GRAPHICS_DRIVER.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS6
#
# This policy setting lets you enable WDDM graphics display driver for Remote Desktop Connections.
# 
# If you enable or do not configure this policy setting, Remote Desktop Connections will use WDDM graphics display driver.
# 
# If you disable this policy setting, Remote Desktop Connections will NOT use WDDM graphics display driver. In this case, the Remote Desktop Connections will use XDDM graphics display driver.
# 
# For this change to take effect, you must restart Windows.
#     
Use WDDM graphics display driver for Remote Desktop Connections:
  lgpo.set:
  - name: TS_SERVER_WDDM_GRAPHICS_DRIVER
  - setting: Enabled
  - policy_class: Machine
