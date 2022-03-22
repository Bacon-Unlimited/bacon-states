# windows:SUPPORTED_Windows7
#
# Specifies the path to a valid certificate in the certificate store.
Certificate Filter For Client SSL:
  lgpo.set:
  - name: Streaming_Certificate_Filter_For_Client_SSL
  - setting:
      Streaming_Certificate_Filter_For_Client_SSL_Prompt: text-placeholder
  - policy_class: Machine
