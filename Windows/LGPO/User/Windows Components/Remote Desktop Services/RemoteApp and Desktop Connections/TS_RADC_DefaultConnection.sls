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
# LOCATION: \User\Windows Components\Remote Desktop Services\RemoteApp and Desktop Connections\TS_RADC_DefaultConnection.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting specifies the default connection URL for RemoteApp and Desktop Connections. The default connection URL is a specific connection that can only be configured by using Group Policy. In addition to the capabilities that are common to all connections, the default connection URL allows document file types to be associated with RemoteApp programs.
# 
# The default connection URL must be configured in the form of http://contoso.com/rdweb/Feed/webfeed.aspx.
#       
# If you enable this policy setting, the specified URL is configured as the default connection URL for the user and replaces any existing connection URL. The user cannot change the default connection URL. The user's default logon credentials are used when setting up the default connection URL.
# 
# If you disable or do not configure this policy setting, the user has no default connection URL.
# 
# Note: RemoteApp programs that are installed through RemoteApp and Desktop Connections from an untrusted server can compromise the security of a user's account.
#       
Specify default connection URL:
  lgpo.set:
  - name: TS_RADC_DefaultConnection
  - setting:
      TS_RADC_DefaultConnectionURL: text-placeholder
  - policy_class: User
