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
# LOCATION: \User\Windows Components\File Explorer\TryHarderPinnedLibrary.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows up to five Libraries or Search Connectors to be pinned to the "Search again" links and the Start menu links. The "Search again" links at the bottom of the Search Results view allow the user to reconduct a search but in a different location.  To add a Library or Search Connector link, specify the path of the .Library-ms or .searchConnector-ms file in the "Location" text box (for example, "C:\sampleLibrary.Library-ms" for the Documents library, or "C:\sampleSearchConnector.searchConnector-ms" for a Search Connector). The pinned link will only work if this path is valid and the location contains the specified .Library-ms or .searchConnector-ms file.
# 
# You can add up to five additional links to the "Search again" links at the bottom of results returned in File Explorer after a search is executed.  These links will be shared between Internet search sites and Search Connectors/Libraries.  Search Connector/Library links take precedence over Internet search links.
# 
# The first several links will also be pinned to the Start menu.  A total of four links can be included on the Start menu.  The "See more results" link will be pinned first by default, unless it is disabled via Group Policy.  The "Search the Internet" link is pinned second, if it is pinned via Group Policy (though this link is disabled by default).  If a custom Internet search link is pinned using the "Custom Internet search provider" Group Policy, this link will be pinned third on the Start menu.  The remaining link(s) will be shared between pinned Search Connectors/Libraries and pinned Internet/intranet search links.  Search Connector/Library links take precedence over Internet/intranet search links.
# 
# If you enable this policy setting, the specified Libraries or Search Connectors will appear in the "Search again" links and the Start menu links.
# 
# If you disable or do not configure this policy setting, no Libraries or Search Connectors will appear in the "Search again" links or the Start menu links.
Pin Libraries or Search Connectors to the "Search again" links and the Start menu:
  lgpo.set:
  - name: TryHarderPinnedLibrary
  - setting:
      Library0: text-placeholder
      Library1: text-placeholder
      Library2: text-placeholder
      Library3: text-placeholder
      Library4: text-placeholder
  - policy_class: User
