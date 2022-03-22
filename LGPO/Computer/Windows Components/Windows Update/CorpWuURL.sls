# WU_SUPPORTED_Win2kSP3_Or_XPSP1_NoWinRT
#
# 
#         Specifies an intranet server to host updates from Microsoft Update. You can then use this update service to automatically update computers on your network.
# 
#         This setting lets you specify a server on your network to function as an internal update service. The Automatic Updates client will search this service for updates that apply to the computers on your network.
# 
#         To use this setting, you must set two server name values: the server from which the Automatic Updates client detects and downloads updates, and the server to which updated workstations upload statistics. You can set both values to be the same server. An optional server name value can be specified to configure Windows Update Agent to download updates from an alternate download server instead of the intranet update service.
# 
#         If the status is set to Enabled, the Automatic Updates client connects to the specified intranet Microsoft update service (or alternate download server), instead of Windows Update, to search for and download updates. Enabling this setting means that end users in your organization don't have to go through a firewall to get updates, and it gives you the opportunity to test updates before deploying them.
# 
#         If the status is set to Disabled or Not Configured, and if Automatic Updates is not disabled by policy or user preference, the Automatic Updates client connects directly to the Windows Update site on the Internet.
# 
#         The alternate download server configures the Windows Update Agent to download files from an alternative download server instead of the intranet update service.
# 
#         The option to download files with missing Urls allows content to be downloaded from the Alternate Download Server when there are no download Urls for files in the update metadata. This option should only be used when the intranet update service does not provide download Urls in the update metadata for files which are present on the alternate download server.
# 
#         Note: If the "Configure Automatic Updates" policy is disabled, then this policy has no effect.
# 
#         Note: If the "Alternate Download Server" is not set, it will use the intranet update service by default to download updates.
# 
#         Note: The option to "Download files with no Url..." is only used if the "Alternate Download Server" is set.
# 
#         Note: This policy is not supported on Windows RT. Setting this policy will not have any effect on Windows RT PCs.
# 
#         To ensure the highest level of security, Microsoft recommends securing WSUS with TLS/SSL protocol, thereby using HTTPS based intranet servers to keep systems secure. If a proxy is required, we recommend configuring system proxy. To ensure highest levels of security, additionally leverage WSUS TLS certificate pinning on all devices.
# 
#         In order to keep clients inherently secure, we are no longer allowing intranet servers to leverage user proxy by default for detecting updates. If you need to leverage user proxy for detecting updates while using an intranet server despite the vulnerabilities it presents, you must configure the proxy behavior to "Allow user proxy to be used as a fallback if detection using system proxy fails".
# 
#         Detection for updates against intranet servers will fail when user proxy is needed as a fallback and the alternate proxy behavior is not configured.
Specify intranet Microsoft update service location:
  lgpo.set:
  - name: CorpWuURL
  - setting:
      CorpWUContentHost_Name: text-placeholder
      CorpWUDoNotEnforceEnterpriseTLSCertPinningForUpdateDetection: boolean-placeholder
      CorpWUFillEmptyContentUrls: boolean-placeholder
      CorpWUStatusURL_Name: text-placeholder
      CorpWUURL_Name: text-placeholder
      SetProxyBehaviorForUpdateDetection: enum-placeholder
  - policy_class: Machine
