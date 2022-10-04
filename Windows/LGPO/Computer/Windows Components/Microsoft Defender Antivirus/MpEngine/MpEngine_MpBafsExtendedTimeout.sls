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
# LOCATION: \Computer\Windows Components\Microsoft Defender Antivirus\MpEngine\MpEngine_MpBafsExtendedTimeout.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# 
#       This feature allows Microsoft Defender Antivirus to block a suspicious file for up to 60 seconds, and scan it in the cloud to make sure it's safe.
#       
#       The typical cloud check timeout is 10 seconds. To enable the extended cloud check feature, specify the extended time in seconds, up to an additional 50 seconds.
# 
#       For example, if the desired timeout is 60 seconds, specify 50 seconds in this setting, which will enable the extended cloud check feature, and will raise the total time to 60 seconds.
# 
#       Note: This feature depends on three other MAPS settings - "Configure the 'Block at First Sight' feature; "Join Microsoft MAPS"; "Send file samples when further analysis is required" all need to be enabled.
#     
Configure extended cloud check:
  lgpo.set:
  - name: MpEngine_MpBafsExtendedTimeout
  - setting:
      MpBafsExtendedTimeout: decimal-placeholder
  - policy_class: Machine
