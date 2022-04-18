# SUPPORTED_IE6SP2
#
# For each zone, the Binary and Scripted Behavior security restrictions may be configured to allow only a list of admin-approved behaviors. This list may be configured here, and applies to all processes which have opted in to the behavior, and to all zones. (Behaviors are components that encapsulate specific functionality or behavior on a page.)
# 
# If you enable this policy setting, this sets the list of behaviors permitted in each zone for which Script and Binary Behaviors is set to 'admin-approved'. Behaviors must be entered in #package#behavior notation, e.g., #default#vml.
# 
# If you disable this policy setting, no behaviors will be allowed in zones set to 'admin-approved', just as if those zones were set to 'disable'.
# 
# If you do not configure this policy setting, only VML will be allowed in zones set to 'admin-approved'.
# 
# Note.  If this policy is set in both Computer Configuration and User Configuration, both lists of behaviors will be allowed as appropriate.
Admin-approved behaviors:
  lgpo.set:
  - name: IESF_Policy_BinaryBehaviorAdminAllow
  - setting:
      IESF_BinaryBehaviorAdminAllow:
      - placeholder1
      - placeholder2
  - policy_class: User
