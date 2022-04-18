# windows:SUPPORTED_WindowsXPSP2_Or_WindowsNETSP1
#
# This policy setting specifies whether "Events.asp" hyperlinks are available for events within the Event Viewer application.
# 
# The Event Viewer normally makes all HTTP(S) URLs into hyperlinks that activate the Internet browser when clicked. In addition, "More Information" is placed at the end of the description text if the event is created by a Microsoft component. This text contains a link (URL) that, if clicked, sends information about the event to Microsoft, and allows users to learn more about why that event occurred.
# 
# If you enable this policy setting, event description hyperlinks are not activated and the text "More Information" is not displayed at the end of the description.
# 
# If you disable or do not configure this policy setting, the user can click the hyperlink, which prompts the user and then sends information about the event over the Internet to Microsoft.  Also, see "Events.asp URL", "Events.asp program", and "Events.asp Program Command Line Parameters" settings in "Administrative Templates/Windows Components/Event Viewer".
Turn off Event Viewer "Events.asp" links:
  lgpo.set:
  - name: EventViewer_DisableLinks
  - setting: Enabled
  - policy_class: Machine
