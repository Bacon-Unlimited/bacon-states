####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \User\Windows Components\Internet Explorer\RestrictHomePage.sls
#
# SUPPORTED WINDOWS OS
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
