# windows:SUPPORTED_Win2k
#
# Lets users run a 16-bit program in a dedicated (not shared) Virtual DOS Machine (VDM) process.
# 
# All DOS and 16-bit programs run on Windows 2000 Professional and Windows XP Professional in the Windows Virtual DOS Machine program. VDM simulates a 16-bit environment, complete with the DLLs required by 16-bit programs. By default, all 16-bit programs run as threads in a single, shared VDM process. As such, they share the memory space allocated to the VDM process and cannot run simultaneously.
# 
# Enabling this setting adds a check box to the Run dialog box, giving users the option of running a 16-bit program in its own dedicated NTVDM process. The additional check box is enabled only when a user enters a 16-bit program in the Run dialog box.
Add "Run in Separate Memory Space" check box to Run dialog box:
  lgpo.set:
  - name: MemCheckBoxInRunDlg
  - setting: Enabled
  - policy_class: User
