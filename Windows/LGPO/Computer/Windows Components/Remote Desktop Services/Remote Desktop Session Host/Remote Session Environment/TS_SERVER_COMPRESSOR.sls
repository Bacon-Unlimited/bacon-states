# TS_SUPPORTED_Vista_SP1
#
# This policy setting allows you to specify which Remote Desktop Protocol (RDP) compression algorithm to use.
# 
# By default, servers use an RDP compression algorithm that is based on the server's hardware configuration.
# 
# If you enable this policy setting, you can specify which RDP compression algorithm to use. If you select the algorithm that is optimized to use less memory, this option is less memory-intensive, but uses more network bandwidth. If you select the algorithm that is optimized to use less network bandwidth, this option uses less network bandwidth, but is more memory-intensive. Additionally, a third option is available that balances memory usage and network bandwidth. In Windows  8 only the compression algorithm that balances memory usage and bandwidth is used.
# 
# You can also choose not to use an RDP compression algorithm. Choosing not to use an RDP compression algorithm will use more network bandwidth and is only recommended if you are using a hardware device that is designed to optimize network traffic. Even if you choose not to use an RDP compression algorithm, some graphics data will still be compressed.
# 
# If you disable or do not configure this policy setting, the default RDP compression algorithm will be used.
#     
Configure compression for RemoteFX data:
  lgpo.set:
  - name: TS_SERVER_COMPRESSOR
  - setting:
      TS_COMPRESSOR_LEVELS: enum-placeholder
  - policy_class: Machine
