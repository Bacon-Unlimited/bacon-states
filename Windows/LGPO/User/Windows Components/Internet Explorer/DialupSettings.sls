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
# LOCATION: \User\Windows Components\Internet Explorer\DialupSettings.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# Specifies that Automatic Detection will be used to configure dial-up settings for users.
# 
# Automatic Detection uses a DHCP (Dynamic Host Configuration Protocol) or DNS server to customize the browser the first time it is started.
# 
# If you enable this policy, users' dial-up settings will be configured by Automatic Detection.
# 
# If you disable this policy or do not configure it, dial-up settings will not be configured by Automatic Detection, unless specified by the user.
Use Automatic Detection for dial-up connections:
  lgpo.set:
  - name: DialupSettings
  - setting: Enabled
  - policy_class: User
