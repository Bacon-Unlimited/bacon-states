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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Connection Client\TS_CLIENT_DISABLE_HARDWARE_MODE.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# This policy setting specifies whether the Remote Desktop Connection can use hardware acceleration if supported hardware is available. If you use this setting, the Remote Desktop Client will use only software decoding. For example, if you have a problem that you suspect may be related to hardware acceleration, use this setting to disable the acceleration; then, if the problem still occurs, you will know that there are additional issues to investigate. If you disable this setting or leave it not configured, the Remote Desktop client will use hardware accelerated decoding if supported hardware is available.
#     
Do not allow hardware accelerated decoding:
  lgpo.set:
  - name: TS_CLIENT_DISABLE_HARDWARE_MODE
  - setting: Enabled
  - policy_class: Machine
