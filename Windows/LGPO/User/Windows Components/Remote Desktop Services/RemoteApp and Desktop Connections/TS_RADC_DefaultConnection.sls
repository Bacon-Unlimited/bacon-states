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
