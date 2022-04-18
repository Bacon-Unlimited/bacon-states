# SUPPORTED_IE10
#
# This policy setting configures what Internet Explorer displays when a new browsing session is started. By default, Internet Explorer displays the home page. In Internet Explorer 10, Internet Explorer can start a new browsing session with the tabs from the last browsing session.
# 
# If you enable this policy setting, Internet Explorer starts a new browsing session with the tabs from the last browsing session. Users cannot change this option to start with the home page.
# 
# If you disable this policy setting, Internet Explorer starts a new browsing session with the home page. Users cannot change this option to start with the tabs from the last browsing session.
# 
# If you do not configure this policy setting, Internet Explorer starts with the home page. Users can change this option to start with the tabs from the last session.
Start Internet Explorer with tabs from last browsing session:
  lgpo.set:
  - name: ContinuousBrowsing
  - setting: Enabled
  - policy_class: Machine
