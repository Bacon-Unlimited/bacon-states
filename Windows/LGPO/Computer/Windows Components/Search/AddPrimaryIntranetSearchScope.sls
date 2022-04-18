# RedistOnly
#
# Enabling this policy allows you to add a primary intranet search location within Windows Desktop Search. The value of this text should be:
# 
# name,url
# 
# For example:
# 
# Intranet,http://intranetsearch.aspx?k=$w 
# 
# You must provide the following:
# 1) A name for the scope, such as 'Intranet'.
# 2) The URL to the search service. Use $w in place of the query term for the search service URL.
# 
# If your intranet search service is SharePoint Portal Server, your query should resemble the following:
# http://sitename/Search.aspx?k=$w
# 
# If your intranet search service is Windows SharePoint Services (WSS), the query should resemble the following, where XXXX is the locale ID of your WSS Service. For example, the English locale ID is 1033.
# http://sitename/_layouts/XXXX/searchresults.aspx?SearchString=$w
# 
# This adds intranet search location to:
# 1) The Windows Deskbar
# 2) The Desktop Search results search box
# 3) The WDS search box in Search Companion
# 
Add primary intranet search location:
  lgpo.set:
  - name: AddPrimaryIntranetSearchScope
  - setting:
      PrimaryIntranetSearchScopeUrl: text-placeholder
  - policy_class: Machine
