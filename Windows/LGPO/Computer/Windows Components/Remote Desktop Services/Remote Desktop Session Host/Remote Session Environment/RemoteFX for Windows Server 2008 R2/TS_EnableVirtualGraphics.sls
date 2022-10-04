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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment\RemoteFX for Windows Server 2008 R2\TS_EnableVirtualGraphics.sls
#
# SUPPORTED WINDOWS OS
# TS_SUPPORTED_ONLY_Windows7_OR_SERVER2K8R2
#
# This policy setting allows you to control the availability of RemoteFX on both a Remote Desktop Virtualization Host (RD Virtualization Host) server and a Remote Desktop Session Host (RD Session Host) server.
# 
# When deployed on an RD Virtualization Host server, RemoteFX delivers a rich user experience by rendering content on the server by using graphics processing units (GPUs). By default, RemoteFX for RD Virtualization Host uses server-side GPUs to deliver a rich user experience over LAN connections and RDP 7.1.
# 
# When deployed on an RD Session Host server, RemoteFX delivers a rich user experience by using a hardware-accelerated compression scheme.
# 
# If you enable this policy setting, RemoteFX will be used to deliver a rich user experience over LAN connections and RDP 7.1.
# 
# If you disable this policy setting, RemoteFX will be disabled.
# 
# If you do not configure this policy setting, the default behavior will be used. By default, RemoteFX for RD Virtualization Host is enabled and RemoteFX for RD Session Host is disabled.
#       
Configure RemoteFX:
  lgpo.set:
  - name: TS_EnableVirtualGraphics
  - setting: Enabled
  - policy_class: Machine
