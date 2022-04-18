# 4OrLater
#
# When using Microsoft Office Outlook in online mode, you can enable this policy to control how fast online mail is indexed on a Microsoft Exchange server. The lower you set this policy, the lower the burden will be on the corresponding Microsoft Exchange server. The default value for this policy is 120 items per minute. To lower the burden on Microsoft Exchange servers, lower the rate of items indexed per minute. If you disable this policy, then online mail items will be indexed at the speed that the Microsoft Exchange server can support. If you set this policy to not configured, then online mail items will be indexed at the speed of 120 items per minute. This policy has no effect on mail items when using Microsoft Office Outlook in cached mode.
Enable throttling for online mail indexing:
  lgpo.set:
  - name: EnableThrottlingOnlineMailboxes
  - setting:
      LimitEnableThrottlingOnlineMailboxes: decimal-placeholder
  - policy_class: Machine
