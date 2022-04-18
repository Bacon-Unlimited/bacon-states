# SUPPORTED_INTERNET_BROWSER_WIN10V1703
#
# This policy setting lets you add up to 5 additional search engines, which can't be removed by your employees, but can be made a personal default engine. This setting doesn't set the default search engine. For that, you must use the "Set default search engine" setting.
# 
# Important
# This setting can only be used with domain-joined or MDM-enrolled devices. For more info, see the Microsoft browser extension policy (aka.ms/browserpolicy).
# 
# If you enable this setting, you can add up to 5 additional search engines. For each additional engine, you must also add a link to your OpenSearch XML file, including at least the short name and https: URL of the search engine. For more info about creating the OpenSearch XML file, see the Understanding OpenSearch Standards (https://msdn.microsoft.com/en-us/library/dd163546.aspx) topic. Use this format to specify the link(s) you wish to add: <https://fabrikam.com/opensearch.xml><https://www.contoso.com/opensearch.xml>
# 
# If you disable this setting, any added search engines are removed from your employee's devices.
# 
# If you don't configure this setting, the search engine list is set to what is specified in App settings.
Configure additional search engines:
  lgpo.set:
  - name: ConfigureAdditionalSearchEngines
  - setting:
      ConfigureAdditionalSearchEngines_Prompt: text-placeholder
  - policy_class: User
