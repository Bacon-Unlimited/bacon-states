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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment\RemoteFX for Windows Server 2008 R2\TS_SERVER_VISEXP.sls
#
# SUPPORTED WINDOWS OS
# TS_SUPPORTED_ONLY_Windows7_OR_SERVER2K8R2
#
# This policy setting allows you to specify the visual experience that remote users receive in Remote Desktop Services sessions. Remote sessions on the remote computer are then optimized to support this visual experience.
# 
# By default, Remote Desktop Services sessions are optimized for rich multimedia, such as applications that use Silverlight or Windows Presentation Foundation.
# 
# If you enable this policy setting, you must select the visual experience for which you want to optimize Remote Desktop Services sessions. You can select either Rich multimedia or Text.
# 
# If you disable or do not configure this policy setting, Remote Desktop Services sessions are optimized for rich multimedia.
#     
Optimize visual experience for Remote Desktop Service Sessions:
  lgpo.set:
  - name: TS_SERVER_VISEXP
  - setting:
      TS_VISEXP_SETTINGS: enum-placeholder
  - policy_class: Machine
