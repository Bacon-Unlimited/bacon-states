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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Internet Zone\IZ_Policy_XAML_1.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting allows you to manage the loading of Extensible Application Markup Language (XAML) files. XAML is an XML-based declarative markup language commonly used for creating rich user interfaces and graphics that take advantage of the Windows Presentation Foundation.
# 
# If you enable this policy setting and set the drop-down box to Enable, XAML files are automatically loaded inside Internet Explorer. The user cannot change this behavior. If you set the drop-down box to Prompt, the user is prompted for loading XAML files.
# 
# If you disable this policy setting, XAML files are not loaded inside Internet Explorer. The user cannot change this behavior.
# 
# If you do not configure this policy setting, the user can decide whether to load XAML files inside Internet Explorer.
Allow loading of XAML files:
  lgpo.set:
  - name: IZ_Policy_XAML_1
  - setting:
      IZ_Partname2402: enum-placeholder
  - policy_class: Machine
