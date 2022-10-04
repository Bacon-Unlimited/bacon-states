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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment\RemoteFX for Windows Server 2008 R2\TS_RemoteDesktopVirtualGraphics.sls
#
# SUPPORTED WINDOWS OS
# TS_SUPPORTED_ONLY_Windows7_OR_SERVER2K8R2
#
# This policy setting allows you to specify the visual experience that remote users will have in Remote Desktop Connection (RDC) connections that use RemoteFX. You can use this policy to balance the network bandwidth usage with the type of graphics experience that is delivered.
# 
# Depending on the requirements of your users, you can reduce network bandwidth usage by reducing the screen capture rate. You can also reduce network bandwidth usage by reducing the image quality (increasing the amount of image compression that is performed).
# 
# If you have a higher than average bandwidth network, you can maximize the utilization of bandwidth by selecting the highest setting for screen capture rate and the highest setting for image quality.
# 
# By default, Remote Desktop Connection sessions that use RemoteFX are optimized for a balanced experience over LAN conditions. If you disable or do not configure this policy setting, Remote Desktop Connection sessions that use RemoteFX will be the same as if the medium screen capture rate and the medium image compression settings were selected (the default behavior). 
# 
Optimize visual experience when using RemoteFX:
  lgpo.set:
  - name: TS_RemoteDesktopVirtualGraphics
  - setting:
      TS_RemoteDesktopVirtualGraphics_ScreenCaptureRate: enum-placeholder
      TS_RemoteDesktopVirtualGraphics_ScreenImageQuality: enum-placeholder
  - policy_class: Machine
