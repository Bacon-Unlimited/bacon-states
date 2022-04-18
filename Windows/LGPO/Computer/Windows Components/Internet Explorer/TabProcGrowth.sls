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
  - policy_class: Machine
