# SUPPORTED_IE10
#
# This policy setting allows you to configure how Internet Explorer sends the Do Not Track (DNT) header.
# 
# If you enable this policy setting, Internet Explorer sends a DNT:1 header with all HTTP and HTTPS requests. The DNT:1 header signals to the servers not to track the user.
# 
# For Internet Explorer 9 and 10:
# If you disable this policy setting, Internet Explorer only sends the Do Not Track header if a Tracking Protection List is enabled or inPrivate Browsing mode is used.
# 
# For at least Internet Explorer 11:
# If you disable this policy setting, Internet Explorer only sends the Do Not Track header if inPrivate Browsing mode is used.
# 
# If you don't configure the policy setting, users can select the Always send Do Not Track header option, in Internet Explorer settings. By selecting this option, Internet Explorer sends a DNT:1 header with all HTTP and HTTPS requests; unless the user grants a site-specific exception. Internet Explorer sends a DNT:0 header to any sites granted an exception. By default, this option is turned on.
Always send Do Not Track header:
  lgpo.set:
  - name: Advanced_AlwaysSendDoNotTrack
  - setting: Enabled
  - policy_class: Machine
