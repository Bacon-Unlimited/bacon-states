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
# LOCATION: \User\Windows Components\Internet Explorer\TabProcGrowth.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting allows you to set the rate at which Internet Explorer creates new tab processes. There are two algorithms that Internet Explorer uses.
# 
# The default algorithm has four settings: low, medium, high, or default. Low creates very few tab processes; medium creates a moderate amount of tab processes; and high allows the tab process to grow very quickly and is intended only for computers that have ample physical memory. The default setting creates the optimal number of tab processes based on the operating system and amount of physical memory. We recommend the default setting.
# 
# The second algorithm must be explicitly enabled through the creation of an integer setting. In this case, each Internet Explorer isolation setting will quickly grow to use the specified integer number of tab processes, regardless of the physical memory on the computer or how many Internet Explorer isolation settings are running.
# 
# If you enable this policy setting, you set the rate at which Internet Explorer creates new tab processes to low, medium, or high, or to an integer.
# 
# If you disable or do not configure this policy setting, the tab process growth is set to the default. The user can change this value by using the registry key. Note: On Terminal Server, the default value is the integer 1.
Set tab process growth:
  lgpo.set:
  - name: TabProcGrowth
  - setting:
      TabProcGrowthPart: text-placeholder
  - policy_class: User
