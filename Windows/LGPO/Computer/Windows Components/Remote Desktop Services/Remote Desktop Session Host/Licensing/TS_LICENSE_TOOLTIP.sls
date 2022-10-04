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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Licensing\TS_LICENSE_TOOLTIP.sls
#
# SUPPORTED WINDOWS OS
# TS_SUPPORTED_Win2k3_Sp1
#
# This policy setting determines whether notifications are displayed on an RD Session Host server when there are problems with RD Licensing that affect the RD Session Host server.
# 
# By default, notifications are displayed on an RD Session Host server after you log on as a local administrator, if there are problems with RD Licensing that affect the RD Session Host server. If applicable, a notification will also be displayed that notes the number of days until the licensing grace period for the RD Session Host server will expire.
# 
# If you enable this policy setting, these notifications will not be displayed on the RD Session Host server.
# 
# If you disable or do not configure this policy setting, these notifications will be displayed on the RD Session Host server after you log on as a local administrator.
Hide notifications about RD Licensing problems that affect the RD Session Host server:
  lgpo.set:
  - name: TS_LICENSE_TOOLTIP
  - setting: Enabled
  - policy_class: Machine
