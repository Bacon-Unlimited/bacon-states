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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment\TS_SERVER_IMAGE_QUALITY.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to specify the visual quality for remote users when connecting to this computer by using Remote Desktop Connection. You can use this policy setting to balance the network bandwidth usage with the visual quality that is delivered.
#       If you enable this policy setting and set quality to Low, RemoteFX Adaptive Graphics uses an encoding mechanism that results in low quality images. This mode consumes the lowest amount of network bandwidth of the quality modes.
#       If you enable this policy setting and set quality to Medium, RemoteFX Adaptive Graphics uses an encoding mechanism that results in medium quality images. This mode provides better graphics quality than low quality and uses less bandwidth than high quality.
#       If you enable this policy setting and set quality to High, RemoteFX Adaptive Graphics uses an encoding mechanism that results in high quality images and consumes moderate network bandwidth.
#       If you enable this policy setting and set quality to Lossless, RemoteFX Adaptive Graphics uses lossless encoding. In this mode, the color integrity of the graphics data is not impacted. However, this setting results in a significant increase in network bandwidth consumption. We recommend that you set this for very specific cases only.
#       If you disable or do not configure this policy setting, RemoteFX Adaptive Graphics uses an encoding mechanism that results in medium quality images.
#     
Configure image quality for RemoteFX Adaptive Graphics:
  lgpo.set:
  - name: TS_SERVER_IMAGE_QUALITY
  - setting:
      TS_SERVER_IMAGE_QUALITY_LEVELS: enum-placeholder
  - policy_class: Machine
