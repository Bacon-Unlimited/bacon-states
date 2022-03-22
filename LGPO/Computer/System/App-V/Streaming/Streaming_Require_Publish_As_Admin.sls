# windows:SUPPORTED_Windows7
#
# Requires admin privileges to publish and unpublish packages and connection groups.
Require Publish As Admin:
  lgpo.set:
  - name: Streaming_Require_Publish_As_Admin
  - setting: Enabled
  - policy_class: Machine
