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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Locked-Down Trusted Sites Zone\IZ_Policy_WinFXRuntimeComponent_6.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting prevents the user's computer from starting Microsoft .NET Framework Setup when the user is browsing to .NET Framework content in Internet Explorer. The .NET Framework is the next-generation platform for Windows. It uses the common language runtime and incorporates support from multiple developer tools. It includes the new managed code APIs for Windows.
# 
# If you enable this policy setting, .NET Framework Setup is turned off. The user cannot change this behavior.
# 
# If you disable this policy setting, .NET Framework Setup is turned on. The user cannot change this behavior.
# 
# If you do not configure this policy setting, .NET Framework Setup is turned on by default. The user can change this behavior.
Turn off .NET Framework Setup:
  lgpo.set:
  - name: IZ_Policy_WinFXRuntimeComponent_6
  - setting:
      IZ_Partname2600: enum-placeholder
  - policy_class: User
