# SUPPORTED_IE8
#
# This setting determines whether IE automatically downloads updated versions of Microsoft’s VersionList.XML. IE uses this file to determine whether an ActiveX control should be stopped from loading.
# 
# If you enable this setting, IE stops downloading updated versions of VersionList.XML. Turning off this automatic download breaks the out-of-date ActiveX control blocking feature by not letting the version list update with newly outdated controls, potentially compromising the security of your computer.
# 
# If you disable or don't configure this setting, IE continues to download updated versions of VersionList.XML.
# 
# For more information, see "Out-of-date ActiveX control blocking" in the Internet Explorer TechNet library.
Turn off automatic download of the ActiveX VersionList:
  lgpo.set:
  - name: VersionListAutomaticDownloadDisable
  - setting: Enabled
  - policy_class: User
