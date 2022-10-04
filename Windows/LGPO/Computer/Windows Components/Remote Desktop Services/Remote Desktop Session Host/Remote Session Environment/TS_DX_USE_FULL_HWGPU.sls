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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment\TS_DX_USE_FULL_HWGPU.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting enables system administrators to change the graphics rendering for all Remote Desktop Services sessions.
# 
# If you enable this policy setting, all Remote Desktop Services sessions use the hardware graphics renderer instead of the Microsoft Basic Render Driver as the default adapter.
# 
# If you disable this policy setting, all Remote Desktop Services sessions use the Microsoft Basic Render Driver as the default adapter.
# 
# If you do not configure this policy setting, Remote Desktop Services sessions on the RD Session Host server use the Microsoft Basic Render Driver as the default adapter. In all other cases, Remote Desktop Services sessions use the hardware graphics renderer by default.
# 
# NOTE: The policy setting enables load-balancing of graphics processing units (GPU) on a computer with more than one GPU installed. The GPU configuration of the local session is not affected by this policy setting.
# 
Use hardware graphics adapters for all Remote Desktop Services sessions:
  lgpo.set:
  - name: TS_DX_USE_FULL_HWGPU
  - setting: Enabled
  - policy_class: Machine
