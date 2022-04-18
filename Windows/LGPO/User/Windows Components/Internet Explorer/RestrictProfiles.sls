# SUPPORTED_IE5_6
#
# Prevents users from changing Profile Assistant settings.
# 
# If you enable this policy, the My Profile button appears dimmed in the Personal Information area on the Content tab in the Internet Options dialog box.
# 
# If you disable this policy or do not configure it, users can change their profile information, such as their street and e-mail addresses.
# 
# The "Disable the Content page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), which removes the Content tab from Internet Explorer in Control Panel, takes precedence over this policy. If it is enabled, this policy is ignored.
Disable changing Profile Assistant settings:
  lgpo.set:
  - name: RestrictProfiles
  - setting: Enabled
  - policy_class: User
