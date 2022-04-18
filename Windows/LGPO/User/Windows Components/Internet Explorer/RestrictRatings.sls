# SUPPORTED_IE5
#
# Prevents users from changing ratings that help control the type of Internet content that can be viewed.
# 
# If you enable this policy, the settings in the Content Advisor area on the Content tab in the Internet Options dialog box appear dimmed.
# 
# If you disable this policy or do not configure it, users can change their ratings settings.
# 
# The "Disable the Ratings page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), which removes the Ratings tab from Internet Explorer in Control Panel, takes precedence over this policy. If it is enabled, this policy is ignored.
Disable changing ratings settings:
  lgpo.set:
  - name: RestrictRatings
  - setting: Enabled
  - policy_class: User
