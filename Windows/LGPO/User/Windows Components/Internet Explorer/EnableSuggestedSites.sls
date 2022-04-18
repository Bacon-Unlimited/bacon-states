# SUPPORTED_IE8
#
# This policy setting controls the Suggested Sites feature, which recommends websites based on the users browsing activity. Suggested Sites reports a users browsing history to Microsoft to suggest sites that the user might want to visit.
# 
# If you enable this policy setting, the user is not prompted to enable Suggested Sites. The users browsing history is sent to Microsoft to produce suggestions.
# 
# If you disable this policy setting, the entry points and functionality associated with this feature are turned off.
# 
# If you do not configure this policy setting, the user can turn on and turn off the Suggested Sites feature.
Turn on Suggested Sites:
  lgpo.set:
  - name: EnableSuggestedSites
  - setting: Enabled
  - policy_class: User
