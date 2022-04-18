# windows:SUPPORTED_Windows7
#
# Reporting Server URL: Displays the URL of reporting server.
# 
#       Reporting Time: When the client data should be reported to the server. Acceptable range is 0~23, corresponding to the 24 hours in a day. A good practice is, don't set this time to a busy hour, e.g. 9AM.
#       
#       Delay reporting for the random minutes: The maximum minutes of random delay on top of the reporting time. For a busy system, the random delay will help reduce the server load.
#       
#       Repeat reporting for every (days): The periodical interval in days for sending the reporting data.
#       
#       Data Cache Limit: This value specifies the maximum size in megabytes (MB) of the XML cache for storing reporting information. The default value is 20 MB. The size applies to the cache in memory. When the limit is reached, the log file will roll over. When a new record is to be added (bottom of the list), one or more of the oldest records (top of the list) will be deleted to make room. A warning will be logged to the Client log and the event log the first time this occurs, and will not be logged again until after the cache has been successfully cleared on transmission and the log has filled up again.
# 
#       Data Block Size: This value specifies the maximum size in bytes to transmit to the server at once on a reporting upload, to avoid permanent transmission failures when the log has reached a significant size. The  default value is 65536. When transmitting report data to the server, one block at a time of application records that is less than or equal to the block size in bytes of XML data will be removed from the cache and sent to the server. Each block will have the general Client data and global package list data prepended, and these will not factor into the block size calculations; the potential exists for an extremely large package list to result in transmission failures over low bandwidth or unreliable connections.
#       
Reporting Server:
  lgpo.set:
  - name: Reporting_Server_Policy
  - setting:
      Data_Block_Size: decimal-placeholder
      Data_Cache_Limit: decimal-placeholder
      Interval: decimal-placeholder
      Random_Delay: decimal-placeholder
      Reporting_Server_URL_Prompt: text-placeholder
      Start_Time: decimal-placeholder
  - policy_class: Machine
