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
# LOCATION: \Computer\Windows Components\Windows Remote Management (WinRM)\WinRM Service\CBTHardeningLevel_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to set the hardening level of the Windows Remote Management (WinRM) service with regard to channel binding tokens.
# 
#         If you enable this policy setting, the WinRM service uses the level specified in HardeningLevel to determine whether or not to accept a received request, based on a supplied channel binding token.
# 
#         If you disable or do not configure this policy setting, you can configure the hardening level locally on each computer.
# 
#         If HardeningLevel is set to Strict, any request not containing a valid channel binding token is rejected.
# 
#         If HardeningLevel is set to Relaxed (default value), any request containing an invalid channel binding token is rejected. However, a request that does not contain a channel binding token is accepted (though it is not protected from credential-forwarding attacks).
# 
#         If HardeningLevel is set to None, all requests are accepted (though they are not protected from credential-forwarding attacks).
#       
Specify channel binding token hardening level:
  lgpo.set:
  - name: CBTHardeningLevel_1
  - setting:
      HardeningLevelCombo: enum-placeholder
  - policy_class: Machine
