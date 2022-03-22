# SUPPORTED_IE8
#
# This policy setting allows you to turn off support for Transport Layer Security (TLS) 1.0, TLS 1.1, TLS 1.2, Secure Sockets Layer (SSL) 2.0, or SSL 3.0 in the browser. TLS and SSL are protocols that help protect communication between the browser and the target server. When the browser attempts to set up a protected communication with the target server, the browser and server negotiate which protocol and version to use. The browser and server attempt to match each other’s list of supported protocols and versions, and they select the most preferred match.
# 
# If you enable this policy setting, the browser negotiates or does not negotiate an encryption tunnel by using the encryption methods that you select from the drop-down list.
# 
# If you disable or do not configure this policy setting, the user can select which encryption method the browser supports.
# 
# Note: SSL 2.0 is off by default and is no longer supported starting with Windows 10 Version 1607. SSL 2.0 is an outdated security protocol, and enabling SSL 2.0 impairs the performance and functionality of TLS 1.0.
Turn off encryption support:
  lgpo.set:
  - name: Advanced_SetWinInetProtocols
  - setting:
      Advanced_WinInetProtocolOptions: enum-placeholder
  - policy_class: User
