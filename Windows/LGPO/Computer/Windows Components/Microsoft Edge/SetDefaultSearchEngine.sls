# SUPPORTED_INTERNET_BROWSER_WIN10V1703
#
# This policy setting lets you configure the default search engine for your employees. Your employees can change the default search engine at any time.
# 
# Important
# This setting can only be used with domain-joined or MDM-enrolled devices. For more info, see the Microsoft browser extension policy (aka.ms/browserpolicy).
# 
# If you enable this setting, you can choose a default search engine for your employees. If this setting is enabled, you must also add the default engine to the Set default search engine setting, by adding a link to your OpenSearch XML file, including at least the short name and https: URL of the search engine. For more info about creating the OpenSearch XML file, see the Understanding OpenSearch Standards (https://msdn.microsoft.com/en-us/library/dd163546.aspx) topic. Use this format to specify the link you wish to add: <https://fabrikam.com/opensearch.xml>
# 
# Note
# If you'd like your employees to use the default Microsoft Edge settings for each market, you can set the string to EDGEDEFAULT. If you'd like your employees to use Microsoft Bing as the default search engine, you can set the string to EDGEBING.
# 
# Employees can change the default search engine at any time, unless you disable the "Allow search engine customization" setting, which restricts any changes.
# 
# If you disable this setting, the policy-set default search engine is removed. If this is also the current in-use default, the engine changes to the Microsoft Edge specified engine for the market.
# 
# If you don't configure this setting, the default search engine is set to the one specified in App settings.
Set default search engine:
  lgpo.set:
  - name: SetDefaultSearchEngine
  - setting:
      SetDefaultSearchEngine_Prompt: text-placeholder
  - policy_class: Machine
