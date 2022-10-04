####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\Printers\EMFDespooling.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# When printing through a print server, determines whether the print spooler on the client will process print jobs itself, or pass them on to the server to do the work.
# 
# This policy setting only effects printing to a Windows print server.
# 
# If you enable this policy setting on a client machine, the client spooler will not process print jobs before sending them to the print server. This decreases the workload on the client at the expense of increasing the load on the server.
# 
# If you disable this policy setting on a client machine, the client itself will process print jobs into printer device commands. These commands will then be sent to the print server, and the server will simply pass the commands to the printer. This increases the workload of the client while decreasing the load on the server.
# 
# If you do not enable this policy setting, the behavior is the same as disabling it.
# 
# Note: This policy does not determine whether offline printing will be available to the client. The client print spooler can always queue print jobs when not connected to the print server. Upon reconnecting to the server, the client will submit any pending print jobs.
# 
# Note: Some printer drivers require a custom print processor. In some cases the custom print processor may not be installed on the client machine, such as when the print server does not support transferring print processors during point-and-print. In the case of a print processor mismatch, the client spooler will always send jobs to the print server for rendering. Disabling the above policy setting does not override this behavior.
# 
# Note: In cases where the client print driver does not match the server print driver (mismatched connection), the client will always process the print job, regardless of the setting of this policy.
Always render print jobs on the server:
  lgpo.set:
  - name: EMFDespooling
  - setting: Enabled
  - policy_class: Machine
