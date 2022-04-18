# SUPPORTED_IE5
#
# Prevents users from changing certificate settings in Internet Explorer. Certificates are used to verify the identity of software publishers.
# 
# If you enable this policy, the settings in the Certificates area on the Content tab in the Internet Options dialog box appear dimmed.
# 
# If you disable this policy or do not configure it, users can import new certificates, remove approved publishers, and change settings for certificates that have already been accepted.
# 
# The "Disable the Content page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), which removes the Content tab from Internet Explorer in Control Panel, takes precedence over this policy. If it is enabled, this policy is ignored.
# 
# Caution: If you enable this policy, users can still run the Certificate Manager Import Wizard by double-clicking a software publishing certificate (.spc) file. This wizard enables users to import and configure settings for certificates from software publishers that haven't already been configured for Internet Explorer.
Disable changing certificate settings:
  lgpo.set:
  - name: RestrictCertificates
  - setting: Enabled
  - policy_class: User
