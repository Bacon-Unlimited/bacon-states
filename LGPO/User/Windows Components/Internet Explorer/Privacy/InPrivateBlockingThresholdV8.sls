# SUPPORTED_IE8ONLY
#
# This policy setting allows you to establish the threshold for InPrivate Filtering Automatic mode.
# 
# The threshold sets the number of first-party sites that a particular third-party item can be referenced from before it is blocked. Setting this value lower can help prevent more third-party sites from obtaining details about a user's browsing. However, doing so may cause compatibility issues on some websites. The allowed value range is 3 through 30.
# 
# If you enable this policy setting, the selected value is enforced.
# 
# If you disable or do not configure this policy setting, the user can establish the InPrivate Filtering threshold by clicking the Safety button and then clicking InPrivate Filtering.
Establish InPrivate Filtering threshold:
  lgpo.set:
  - name: InPrivateBlockingThresholdV8
  - setting:
      InPrivateBlockingThresholdV8Value: decimal-placeholder
  - policy_class: User
