# windows:SUPPORTED_WindowsXP
#
# This policy setting determines whether Group Policy processing is synchronous (that is, whether computers wait for the network to be fully initialized during computer startup and user logon). By default, on client computers, Group Policy processing is not synchronous; client computers typically do not wait for the network to be fully initialized at startup and logon. Existing users are logged on using cached credentials, which results in shorter logon times. Group Policy is applied in the background after the network becomes available. 
# 
# Note that because this is a background refresh, extensions such as Software Installation and Folder Redirection take two logons to apply changes. To be able to operate safely, these extensions require that no users be logged on. Therefore, they must be processed in the foreground before users are actively using the computer. In addition, changes that are made to the user object, such as adding a roaming profile path, home directory, or user object logon script, may take up to two logons to be detected.
# 
# If a user with a roaming profile, home directory, or user object logon script logs on to a computer, computers always wait for the network to be initialized before logging the user on. If a user has never logged on to this computer before, computers always wait for the network to be initialized.
# 
# If you enable this policy setting, computers wait for the network to be fully initialized before users are logged on. Group Policy is applied in the foreground, synchronously. 
# 
# On servers running Windows Server 2008 or later, this policy setting is ignored during Group Policy processing at computer startup and Group Policy processing will be synchronous (these servers wait for the network to be initialized during computer startup). 
# 
# If the server is configured as follows, this policy setting takes effect during Group Policy processing at user logon:
# •  The server is configured as a terminal server (that is, the Terminal Server role service is installed and configured on the server); and
# •  The “Allow asynchronous user Group Policy processing when logging on through Terminal Services” policy setting is enabled. This policy setting is located under Computer Configuration\Policies\Administrative templates\System\Group Policy\.
# 
# If this configuration is not implemented on the server, this policy setting is ignored. In this case, Group Policy processing at user logon is synchronous (these servers wait for the network to be initialized during user logon).
# 
# If you disable or do not configure this policy setting and users log on to a client computer or a server running Windows Server 2008 or later and that is configured as described earlier, the computer typically does not wait for the network to be fully initialized. In this case, users are logged on with cached credentials. Group Policy is applied asynchronously in the background.
# 
# Notes: 
# -If you want to guarantee the application of Folder Redirection, Software Installation, or roaming user profile settings in just one logon, enable this policy setting to ensure that Windows waits for the network to be available before applying policy. 
# -If Folder Redirection policy will apply during the next logon, security policies will be applied asynchronously during the next update cycle, if network connectivity is available.
Always wait for the network at computer startup and logon:
  lgpo.set:
  - name: SyncForegroundPolicy
  - setting: Enabled
  - policy_class: Machine
