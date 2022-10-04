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
# LOCATION: \Computer\Windows Components\Search\AddPrimaryIntranetSearchScope.sls
#
# SUPPORTED WINDOWS OS
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
