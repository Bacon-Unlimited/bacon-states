# SUPPORTED_INTERNET_BROWSER_WIN10V1511
#
# This policy setting lets you configure the default list of Favorites that appear for your employees. Employees can change their favorites by adding or removing items at any time.
# 
# If you enable this setting, you can configure what default Favorites appear for your employees. If this setting is enabled, you must also provide a list of Favorites in the Options section. This list is imported after your policy is deployed.
# 
# If you disable or don't configure this setting, employees will see the Favorites that they set in the Favorites hub.
Configure Favorites:
  lgpo.set:
  - name: Favorites
  - setting:
      ProvisionedFavorites_List:
      - placeholder1
      - placeholder2
  - policy_class: Machine
