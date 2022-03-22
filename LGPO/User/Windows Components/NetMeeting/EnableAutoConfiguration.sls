# SUPPORTED_NetMeeting3
#
# Configures NetMeeting to download settings for users each time it starts.
# 
# The settings are downloaded from the URL listed in the "Configuration URL:" text box.
# 
# Group Policy based settings have precedence over any conflicting settings set by downloading them from this URL.
Enable Automatic Configuration:
  lgpo.set:
  - name: EnableAutoConfiguration
  - setting:
      AutoConfigFile: text-placeholder
  - policy_class: User
