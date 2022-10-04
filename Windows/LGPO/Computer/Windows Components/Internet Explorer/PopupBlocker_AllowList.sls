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
# LOCATION: \Computer\Windows Components\Internet Explorer\PopupBlocker_AllowList.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# This policy setting allows you to specify a list of web sites that will be allowed to open pop-up windows regardless of the Internet Explorer process's Pop-Up Blocker settings.
# 
# If you enable this policy setting, you can enter a list of sites which will be allowed to open pop-up windows regardless of user settings. Only the domain name is allowed, so www.contoso.com is valid, but not http://www.contoso.com. Wildcards are allowed, so *.contoso.com is also valid.
# 
# If you disable this or do not configure this policy setting, you will not be able to provide a default Pop-up Blocker exception list.
# 
# Note: You can disable users from adding or removing websites to the exception list by enabling "Turn off Managing Pop-up Allow list" policy.
Pop-up allow list:
  lgpo.set:
  - name: PopupBlocker_AllowList
  - setting:
      PopupBlocker_AllowListPrompt:
      - placeholder1
      - placeholder2
  - policy_class: Machine
