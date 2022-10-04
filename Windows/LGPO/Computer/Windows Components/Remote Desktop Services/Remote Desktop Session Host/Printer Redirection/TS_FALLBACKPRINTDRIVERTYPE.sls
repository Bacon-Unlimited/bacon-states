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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Printer Redirection\TS_FALLBACKPRINTDRIVERTYPE.sls
#
# SUPPORTED WINDOWS OS
# TS_SUPPORTED_Win2k3_Sp1_Only
#
# This policy setting allows you to specify the RD Session Host server fallback printer driver behavior.
# 
# By default, the RD Session Host server fallback printer driver is disabled. If the RD Session Host server does not have a printer driver that matches the client's printer, no printer will be available for the Remote Desktop Services session.
# 
# If you enable this policy setting, the fallback printer driver is enabled, and the default behavior is for the RD Session Host server to find a suitable printer driver. If one is not found, the client's printer is not available. You can choose to change this default behavior. The available options are:
# 
# "Do nothing if one is not found" - If there is a printer driver mismatch, the server will attempt to find a suitable driver. If one is not found, the client's printer is not available. This is the default behavior.
# 
# "Default to PCL if one is not found" - If no suitable printer driver can be found, default to the Printer Control Language (PCL) fallback printer driver.
# 
# "Default to PS if one is not found" - If no suitable printer driver can be found, default to the PostScript (PS) fallback printer driver.
# 
# "Show both PCL and PS if one is not found" - If no suitable driver can be found, show both PS and PCL-based fallback printer drivers.
# 
# If you disable this policy setting, the RD Session Host server fallback driver is disabled and the RD Session Host server will not attempt to use the fallback printer driver.
# 
# If you do not configure this policy setting, the fallback printer driver behavior is off by default.
# 
# Note: If the "Do not allow client printer redirection" setting is enabled, this policy setting is ignored and the fallback printer driver is disabled.
Specify RD Session Host server fallback printer driver behavior:
  lgpo.set:
  - name: TS_FALLBACKPRINTDRIVERTYPE
  - setting:
      TS_FALLBACK_OPTIONS: enum-placeholder
  - policy_class: Machine
