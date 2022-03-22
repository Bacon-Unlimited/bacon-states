# windows:SUPPORTED_Windows8
#
# This setting prevents users from managing the ability to allow apps to access the user name, account picture, and domain information.
# 
# If you enable this policy setting, sharing of user name, picture and domain information may be controlled by setting one of the following options:
# 
# "Always on" - users will not be able to change this setting and the user's name and account picture will be shared with apps (not desktop apps). In addition apps (not desktop apps) that have the enterprise authentication capability will also be able to retrieve the user's UPN, SIP/URI, and DNS.
# 
# "Always off" - users will not be able to change this setting and the user's name and account picture will not be shared with apps (not desktop apps). In addition apps (not desktop apps) that have the enterprise authentication capability will not be able to retrieve the user's UPN, SIP/URI, and DNS. Selecting this option may have a negative impact on certain enterprise software and/or line of business apps that depend on the domain information protected by this setting to connect with network resources.
# 
# If you do not configure or disable this policy the user will have full control over this setting and can turn it off and on. Selecting this option may have a negative impact on certain enterprise software and/or line of business apps that depend on the domain information protected by this setting to connect with network resources if users choose to turn the setting off.
#       
User management of sharing user name, account picture, and domain information with apps (not desktop apps):
  lgpo.set:
  - name: UserInfoAccessAction
  - setting:
      AllowUserInfoAccess: enum-placeholder
  - policy_class: Machine
