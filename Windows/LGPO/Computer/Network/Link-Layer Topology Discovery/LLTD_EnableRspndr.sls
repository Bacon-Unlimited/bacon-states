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
# LOCATION: \Computer\Network\Link-Layer Topology Discovery\LLTD_EnableRspndr.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting changes the operational behavior of the Responder network protocol driver.
# 
# The Responder allows a computer to participate in Link Layer Topology Discovery requests so that it can be discovered and located on the network. It also allows a computer to participate in Quality-of-Service activities such as bandwidth estimation and network health analysis.
# 
# If you enable this policy setting, additional options are available to fine-tune your selection. You may choose the "Allow operation while in domain" option to allow the Responder to operate on a network interface that's connected to a managed network. On the other hand, if a network interface is connected to an unmanaged network, you may choose the "Allow operation while in public network" and "Prohibit operation while in private network" options instead.
# 
# If you disable or do not configure this policy setting, the default behavior for the Responder will apply.
Turn on Responder (RSPNDR) driver:
  lgpo.set:
  - name: LLTD_EnableRspndr
  - setting:
      LLTD_EnableRspndr_AllowOnDomain: boolean-placeholder
      LLTD_EnableRspndr_AllowOnPublicNet: boolean-placeholder
      LLTD_EnableRspndr_ProhibitOnPrivateNet: boolean-placeholder
  - policy_class: Machine
