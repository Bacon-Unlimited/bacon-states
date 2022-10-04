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
# LOCATION: \User\Windows Components\Windows Media Player\Networking\ConfigureRTSPProxySettings.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_WMP9
#
# This policy setting allows you to specify the RTSP proxy settings for Windows Media Player.
# 
# If you enable this policy setting, select one of the following proxy types:
# 
# - Autodetect: the proxy settings are automatically detected.
# - Custom: unique proxy settings are used.
# 
# If the Custom proxy type is selected, the rest of the options on the Setting tab must be specified; otherwise, the default settings are used. The options are ignored if Autodetect is selected.
# 
# The Configure button on the Network tab in the Player is not available and the protocol cannot be configured. If the "Hide network tab" policy setting is also enabled, the entire Network tab is hidden.
# 
# If you disable this policy setting, the RTSP proxy server cannot be used and users cannot change the RTSP proxy settings.
# 
# If you do not configure this policy setting, users can configure the RTSP proxy settings.
Configure RTSP Proxy:
  lgpo.set:
  - name: ConfigureRTSPProxySettings
  - setting:
      BypassProxyLocal: boolean-placeholder
      DoNotUseProxyLocal: text-placeholder
      ProxyAddress: text-placeholder
      ProxyPort: decimal-placeholder
      Proxytype: enum-placeholder
  - policy_class: User
