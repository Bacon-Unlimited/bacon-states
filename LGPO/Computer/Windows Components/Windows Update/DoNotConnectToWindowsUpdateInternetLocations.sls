# windows:SUPPORTED_Windows_6_3
#
# Even when Windows Update is configured to receive updates from an intranet update service, it will periodically retrieve information from the public Windows Update service to enable future connections to Windows Update, and other services like Microsoft Update or the Windows Store.
# 
# Enabling this policy will disable that functionality, and may cause connection to public services such as the Windows Store to stop working.
# 
# Note: This policy applies only when this PC is configured to connect to an intranet update service using the "Specify intranet Microsoft update service location" policy.
Do not connect to any Windows Update Internet locations:
  lgpo.set:
  - name: DoNotConnectToWindowsUpdateInternetLocations
  - setting: Enabled
  - policy_class: Machine
