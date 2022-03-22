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
