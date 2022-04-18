# windows:SUPPORTED_Windows7
#
# Specifies the CLSID for a compatible implementation of the IAppvPackageLocationProvider interface.
Location Provider:
  lgpo.set:
  - name: Streaming_Location_Provider
  - setting:
      Streaming_Location_Provider_Prompt: text-placeholder
  - policy_class: Machine
