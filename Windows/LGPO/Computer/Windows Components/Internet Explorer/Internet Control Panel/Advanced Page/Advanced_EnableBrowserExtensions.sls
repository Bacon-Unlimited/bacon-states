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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\Advanced Page\Advanced_EnableBrowserExtensions.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SRVSP1
#
# This policy setting allows you to manage whether Internet Explorer will launch COM add-ons known as browser helper objects, such as toolbars. Browser helper objects may contain flaws such as buffer overruns which impact Internet Explorer's performance or stability.
# 
# If you enable this policy setting, Internet Explorer automatically launches any browser helper objects that are installed on the user's computer.
# 
# If you disable this policy setting, browser helper objects do not launch.
# 
# If you do not configure this policy, Internet Explorer automatically launches any browser helper objects that are installed on the user's computer.
Allow third-party browser extensions:
  lgpo.set:
  - name: Advanced_EnableBrowserExtensions
  - setting: Enabled
  - policy_class: Machine
