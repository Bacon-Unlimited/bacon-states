# windows:SUPPORTED_Win2k
#
# This policy setting specifies additional programs or documents that Windows starts automatically when a user logs on to the system.
# 
# If you enable this policy setting, you can specify which programs can run at the time the user logs on to this computer that has this policy applied.
# 
# To specify values for this policy setting, click Show. In the Show Contents dialog box in the Value column, type the name of the executable program (.exe) file or document file. To specify another name, press ENTER, and type the name. Unless the file is located in the %Systemroot% directory, you must specify the fully qualified path to the file.
# 
# If you disable or do not configure this policy setting, the user will have to start the appropriate programs after logon.
# 
# Note: This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the system starts the programs specified in the Computer Configuration setting just before it starts the programs specified in the User Configuration setting.
# 
# Also, see the ""Do not process the legacy run list"" and the ""Do not process the run once list"" settings.
Run these programs at user logon:
  lgpo.set:
  - name: Run_2
  - setting:
      RunListBox2:
      - placeholder1
      - placeholder2
  - policy_class: Machine
