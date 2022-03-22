# windows:SUPPORTED_Windows_10_0
#
# Specifies the maximum total bytes in GB that Delivery Optimization is allowed to upload to Internet peers in each calendar month.
# 
# The value 0 (zero) means "unlimited"; No monthly upload limit is applied if 0 is set.
Monthly Upload Data Cap (in GB):
  lgpo.set:
  - name: MonthlyUploadDataCap
  - setting:
      MonthlyUploadDataCap: decimal-placeholder
  - policy_class: Machine
