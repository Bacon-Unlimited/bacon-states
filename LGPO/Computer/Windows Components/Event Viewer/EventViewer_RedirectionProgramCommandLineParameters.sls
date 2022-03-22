# windows:SUPPORTED_WindowsXPSP2
#
# This specifies the command line parameters that will be passed to the events.asp program
Events.asp program command line parameters:
  lgpo.set:
  - name: EventViewer_RedirectionProgramCommandLineParameters
  - setting:
      EventViewer_RedirectionProgramCommandLineParameters: text-placeholder
  - policy_class: Machine
