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
# LOCATION: \Computer\Windows Components\App runtime\AppxRuntimeBlockProtocolElevation.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting lets you control whether Windows Store apps can open URIs using the default desktop app for a URI scheme. Because desktop apps run at a higher integrity level than Windows Store apps, there is a risk that a URI scheme launched by a Windows Store app might compromise the system by launching a desktop app.
# 
# If you enable this policy setting, Windows Store apps cannot open URIs in the default desktop app for a URI scheme; they can open URIs only in other Windows Store apps.
# 
# If you disable or do not configure this policy setting, Windows Store apps can open URIs in the default desktop app for a URI scheme.
# 
# Note: Enabling this policy setting does not block Windows Store apps from opening the default desktop app for the http, https, and mailto URI schemes. The handlers for these URI schemes are hardened against URI-based vulnerabilities from untrusted sources, reducing the associated risk.
Block launching desktop apps associated with a URI scheme:
  lgpo.set:
  - name: AppxRuntimeBlockProtocolElevation
  - setting: Enabled
  - policy_class: Machine
