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
# LOCATION: \Computer\Windows Components\Delivery Optimization\DelayForegroundDownloadFromHttp.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# This policy allows you to delay the use of an HTTP source in a foreground (interactive) download that is allowed to use P2P.
# 
# After the max delay has reached, the download will resume using HTTP, either downloading the entire payload or complementing the bytes that could not be downloaded from Peers.
# 
# Note that a download that is waiting for peer sources, will appear to be stuck for the end user.
# 
# The recommended value is 1 minute (60).
Delay Foreground download from http (in secs):
  lgpo.set:
  - name: DelayForegroundDownloadFromHttp
  - setting:
      DelayForegroundDownloadFromHttp: decimal-placeholder
  - policy_class: Machine
