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
# LOCATION: \User\Windows Components\Internet Explorer\Administrator Approved Controls\Menu_Controls.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# Designates a set of Microsoft ActiveX controls used to manipulate pop-up menus in the browser as administrator-approved.
# 
# If you enable this policy, these controls can be run in security zones in which you specify that administrator-approved controls can be run.
# 
# If you disable this policy or do not configure it, these controls will not be designated as administrator-approved.
# 
# To specify a control as administrator-approved, click Enabled, and then select the check box for the control:
# 
# -- MCSiMenu - enables Web authors to control the placement and appearance of Windows pop-up menus on Web pages
# -- Popup Menu Object - enables Web authors to add pop-up menus to Web pages
# 
# To specify how administrator-approved controls are handled for each security zone, carry out the following steps:
# 
# 1. In Group Policy, click User Configuration, click Internet Explorer Maintenance, and then click Security.
# 
# 2. Double-click Security Zones and Content Ratings, click Import the Current Security Zones Settings, and then click Modify Settings.
# 
# 3. Select the content zone in which you want to manage ActiveX controls, and then click Custom Level.
# 
# 4. In the Run ActiveX Controls and Plug-ins area, click Administrator Approved.
Menu Controls:
  lgpo.set:
  - name: Menu_Controls
  - setting:
      Ikonic_Control: boolean-placeholder
      MCSiMenu: boolean-placeholder
      PopupMenu_Object: boolean-placeholder
  - policy_class: User
