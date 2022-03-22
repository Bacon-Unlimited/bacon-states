# windows:SUPPORTED_WindowsXPOnly
#
# This setting controls automatic updates to a user's computer.
# 
# Whenever a user connects to the Internet, Windows searches for updates available for the software and hardware on their computer and automatically downloads them. This happens in the background, and the user is prompted when downloaded components are ready to be installed, or prior to downloading, depending on their configuration.
# 
# If you enable this setting, it prohibits Windows from searching for updates.
# 
# If you disable or do not configure it, Windows searches for updates and automatically downloads them.
# 
# Note: Windows Update is an online catalog customized for your computer that consists of items such as drivers, critical updates, Help files, and Internet products that you can download to keep your computer up to date.
# 
# Also, see the "Remove links and access to Windows Update" setting. If the "Remove links and access to Windows Update" setting is enabled, the links to Windows Update on the Start menu are also removed.
# 
# Note: If you have installed Windows XP Service Pack 1 or the update to Automatic Updates that was released after Windows XP was originally shipped, then you should use the new Automatic Updates settings located at: 'Computer Configuration / Administrative Templates / Windows Update'
Windows Automatic Updates:
  lgpo.set:
  - name: NoAutoUpdate
  - setting: Enabled
  - policy_class: User
