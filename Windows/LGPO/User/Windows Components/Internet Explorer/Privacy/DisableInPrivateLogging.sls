# SUPPORTED_IE8ONLY
#
# This policy setting allows you to turn off the collection of data used by the InPrivate Filtering Automatic mode.
# 
# The data consists of the URLs of third-party content, along with data about the first-party websites that referenced it. It is collected during non-InPrivate (normal) browsing sessions.
# 
# If you enable this policy setting, InPrivate Filtering data collection is turned off.
# 
# If you disable this policy setting, InPrivate Filtering collection is turned on.
# 
# If you do not configure this policy setting, InPrivate Filtering data collection can be turned on or off on the Privacy tab in Internet Options.
Turn off collection of InPrivate Filtering data:
  lgpo.set:
  - name: DisableInPrivateLogging
  - setting: Enabled
  - policy_class: User
