# 4OrLater
#
# If enabled, clients will be unable to query this computer's index remotely.  Thus, when they are browsing network shares that are stored on this computer, they will not search them using the index. If disabled, client search requests will use this computer's index. Default is disabled.
Prevent clients from querying the index remotely:
  lgpo.set:
  - name: PreventRemoteQueries
  - setting: Enabled
  - policy_class: Machine
