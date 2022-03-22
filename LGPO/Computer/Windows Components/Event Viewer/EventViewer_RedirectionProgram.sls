# windows:SUPPORTED_WindowsXPSP2
#
# This is the program that will be invoked when the user clicks the events.asp link.
Events.asp program:
  lgpo.set:
  - name: EventViewer_RedirectionProgram
  - setting:
      EventViewer_RedirectionProgram: text-placeholder
  - policy_class: Machine
