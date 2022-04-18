# SUPPORTED_IE5_NONVISTA
#
# Prevents users from changing the default programs for messaging tasks.
# 
# If you enable this policy, the E-mail, Newsgroups, and Internet Call options in the Internet Programs area appear dimmed. To display these options, users open the Internet Options dialog box, and then click the Programs tab.
# 
# If you disable this policy or do not configure it, users can determine which programs to use for sending mail, viewing newsgroups, and placing Internet calls, if programs that perform these tasks are installed.
# 
# The "Disable the Programs page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), which removes the Programs tab from Internet Explorer in Control Panel, takes precedence over this policy. If it is enabled, this policy is ignored.
Disable changing Messaging settings:
  lgpo.set:
  - name: RestrictMessaging
  - setting: Enabled
  - policy_class: User
