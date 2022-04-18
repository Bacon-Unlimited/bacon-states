# SUPPORTED_IE5
#
# The Home page specified on the General tab of the Internet Options dialog box is the default Web page that Internet Explorer loads whenever it is run.
# 
# If you enable this policy setting, a user cannot set a custom default home page. You must specify which default home page should load on the user machine. For machines with at least Internet Explorer 7, the home page can be set within this policy to override other home page policies.
# 
# If you disable or do not configure this policy setting, the Home page box is enabled and users can choose their own home page.
Disable changing home page settings:
  lgpo.set:
  - name: RestrictHomePage
  - setting:
      EnterHomePagePrompt: text-placeholder
  - policy_class: User
