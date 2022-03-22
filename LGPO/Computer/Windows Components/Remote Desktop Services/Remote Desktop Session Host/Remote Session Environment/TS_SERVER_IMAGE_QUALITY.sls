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
