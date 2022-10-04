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
# LOCATION: \User\Windows Components\Internet Explorer\Privacy\DisableInPrivateToolbars.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting allows you to choose whether or not toolbars and Browser Helper Objects (BHOs) are loaded by default during an InPrivate Browsing session.
# 
# Toolbars and BHOs may store data about a user's browsing session. By default, the computer does not load them when InPrivate Browsing starts.
# 
# If you enable this policy setting, toolbars and BHOs are not loaded by default during an InPrivate Browsing session.
# 
# If you disable this policy setting, toolbars and BHOs are loaded by default during an InPrivate Browsing session.
# 
# If you do not configure this policy setting, it can be configured on the Privacy tab in Internet Options.
Prevent the computer from loading toolbars and Browser Helper Objects when InPrivate Browsing starts:
  lgpo.set:
  - name: DisableInPrivateToolbars
  - setting: Enabled
  - policy_class: User
