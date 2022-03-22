# windows:SUPPORTED_WindowsPreVista
#
# Specifies that Distributed Link Tracking clients in this domain may use the Distributed Link Tracking (DLT) server, which runs on domain controllers.  The DLT client enables programs to track linked  files that are moved within an NTFS volume, to another NTFS volume on the same computer, or to an NTFS volume on  another computer.   The DLT client can more reliably track links when allowed to use the DLT server.  This policy should not be set unless the DLT server is running on all domain controllers in the domain.
Allow Distributed Link Tracking clients to use domain resources:
  lgpo.set:
  - name: DLT_AllowDomainMode
  - setting: Enabled
  - policy_class: Machine
