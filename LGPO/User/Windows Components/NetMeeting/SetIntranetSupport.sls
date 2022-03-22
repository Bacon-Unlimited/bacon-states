# SUPPORTED_NetMeeting3
#
# Sets the URL NetMeeting will display when the user chooses the Help Online Support command.
Set the intranet support Web page:
  lgpo.set:
  - name: SetIntranetSupport
  - setting:
      IntranetSupportURL: text-placeholder
  - policy_class: User
