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
# LOCATION: \Computer\Network\Background Intelligent Transfer Service (BITS)\BITS_MaxBandwidthV2_Work.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_Windows7OrBITS35
#
# This policy setting limits the network bandwidth that Background Intelligent Transfer Service (BITS) uses for background transfers during the work and nonwork days and hours. The work schedule is defined using a weekly calendar, which consists of days of the week and hours of the day. All hours and days that are not defined in a work schedule are considered non-work hours.
# 
#           If you enable this policy setting, you can set up a schedule for limiting network bandwidth during both work and nonwork hours. After the work schedule is defined, you can set the bandwidth usage limits for each of the three BITS background priority levels: high, normal, and low.
# 
#           You can specify a limit to use for background jobs during a work schedule. For example, you can limit the network bandwidth of low priority jobs to 128 Kbps from 8:00 A.M. to 5:00 P.M. on Monday through Friday, and then set the limit to 512 Kbps for nonwork hours.
# 
#           If you disable or do not configure this policy setting, BITS uses all available unused bandwidth for background job transfers.
#       
Set up a work schedule to limit the maximum network bandwidth used for BITS background transfers:
  lgpo.set:
  - name: BITS_MaxBandwidthV2_Work
  - setting:
      BITS_IgnoreLimitsOnLan: boolean-placeholder
      BITS_NonWorkHighPriorityLimit: decimal-placeholder
      BITS_NonWorkHighPriorityUnit: enum-placeholder
      BITS_NonWorkLowPriorityLimit: decimal-placeholder
      BITS_NonWorkLowPriorityUnit: enum-placeholder
      BITS_NonWorkNormalPriorityLimit: decimal-placeholder
      BITS_NonWorkNormalPriorityUnit: enum-placeholder
      BITS_WorkDaysFrom: enum-placeholder
      BITS_WorkDaysTo: enum-placeholder
      BITS_WorkHighPriorityLimit: decimal-placeholder
      BITS_WorkHighPriorityUnit: enum-placeholder
      BITS_WorkHoursFrom: enum-placeholder
      BITS_WorkHoursTo: enum-placeholder
      BITS_WorkLowPriorityLimit: decimal-placeholder
      BITS_WorkLowPriorityUnit: enum-placeholder
      BITS_WorkNormalPriorityLimit: decimal-placeholder
      BITS_WorkNormalPriorityUnit: enum-placeholder
  - policy_class: Machine
