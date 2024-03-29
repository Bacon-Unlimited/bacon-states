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
# LOCATION: \Computer\Windows Components\Internet Explorer\Security Features\Add-on Management\VerMgmtDomainAllowlist.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting allows you to manage a list of domains on which Internet Explorer will stop blocking outdated ActiveX controls. Outdated ActiveX controls are never blocked in the Intranet Zone.
# 
# If you enable this policy setting, you can enter a custom list of domains for which outdated ActiveX controls won't be blocked in Internet Explorer. Each domain entry must be formatted like one of the following:
# 
# 1. "domain.name.TLD". For example, if you want to include *.contoso.com/*, use "contoso.com"
# 2. "hostname". For example, if you want to include http://example, use "example"
# 3. "file:///path/filename.htm". For example, use "file:///C:/Users/contoso/Desktop/index.htm"
# 
# If you disable or don't configure this policy setting, the list is deleted and Internet Explorer continues to block specific outdated ActiveX controls on all domains in the Internet Zone.
# 
# For more information, see "Outdated ActiveX Controls" in the Internet Explorer TechNet library.
Turn off blocking of outdated ActiveX controls for Internet Explorer on specific domains:
  lgpo.set:
  - name: VerMgmtDomainAllowlist
  - setting:
      DomainList:
      - placeholder1
      - placeholder2
  - policy_class: Machine
