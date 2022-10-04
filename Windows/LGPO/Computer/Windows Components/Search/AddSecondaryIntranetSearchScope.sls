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
# LOCATION: \Computer\Windows Components\Search\AddSecondaryIntranetSearchScope.sls
#
# SUPPORTED WINDOWS OS
# RedistOnly
#
# Enabling this policy allows you to add intranet search locations in addition to the primary intranet search location defined in the Add Primary Intranet Search Location policy. The value of this text should be:
# 
# name1,url1;name2,url2;...nameN,urlN
# 
# For example:
# 
# MySearch,http://mysearch.aspx?q=$w;MySearch2,http://mysearch2?q=$w.
# 
# For each search scope, provide:
# 1) A name for the scope, such as 'IT Web'.
# 2) The URL to the search service. Use $w in place of the query term for the search service URL.
# 
# If your intranet search service is SharePoint Portal Server, your query should resemble the following:
# http://sitename/Search.aspx?k=$w
# 
# If your intranet search service is Windows SharePoint Services (WSS), the query should resemble the following, where XXXX is the locale ID of your WSS Service. For example, the English locale ID is 1033.
# http://sitename/_layouts/XXXX/searchresults.aspx?SearchString=$w
# 
# These additional intranet search locations are added to the All Locations list in the Desktop Search results.
Add secondary intranet search locations:
  lgpo.set:
  - name: AddSecondaryIntranetSearchScope
  - setting:
      SecondaryIntranetSearchScopeUrl: text-placeholder
  - policy_class: Machine
