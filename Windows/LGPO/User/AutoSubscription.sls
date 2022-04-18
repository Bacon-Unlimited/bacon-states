# windows:SUPPORTED_Windows_10_0
#
# Controls the list of URLs that the user should be auto-subscribed to
Enable auto-subscription:
  lgpo.set:
  - name: AutoSubscription
  - setting: Enabled
  - policy_class: User
