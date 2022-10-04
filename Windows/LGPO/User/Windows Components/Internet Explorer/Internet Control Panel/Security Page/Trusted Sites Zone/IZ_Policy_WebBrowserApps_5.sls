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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Trusted Sites Zone\IZ_Policy_WebBrowserApps_5.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting allows you to manage the loading of XAML Browser Applications (XBAPs). These are browser-hosted, ClickOnce-deployed applications built via WinFX. These applications run in a security sandbox and take advantage of the Windows Presentation Foundation platform for the web.
# 
# If you enable this policy setting and set the drop-down box to Enable, XBAPs are automatically loaded inside Internet Explorer. The user cannot change this behavior. If you set the drop-down box to Prompt, the user is prompted for loading XBAPs.
# 
# If you disable this policy setting, XBAPs are not loaded inside Internet Explorer. The user cannot change this behavior.
# 
# If you do not configure this policy setting, the user can decide whether to load XBAPs inside Internet Explorer.
Allow loading of XAML Browser Applications:
  lgpo.set:
  - name: IZ_Policy_WebBrowserApps_5
  - setting:
      IZ_Partname2400: enum-placeholder
  - policy_class: User
