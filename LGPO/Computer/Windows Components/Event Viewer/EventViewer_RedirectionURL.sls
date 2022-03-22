# windows:SUPPORTED_WindowsXPSP2
#
# This is the URL that will be passed to the Description area in the Event Properties dialog box. Change this value if you want to use a different Web server to handle event information requests.
Events.asp URL:
  lgpo.set:
  - name: EventViewer_RedirectionURL
  - setting:
      EventViewer_RedirectionURL: text-placeholder
  - policy_class: Machine
