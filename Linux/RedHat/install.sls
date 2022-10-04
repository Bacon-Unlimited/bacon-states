##os: centos
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# This state installs Mozilla Firefox on RedHat.
# It illustrates the use of a simple pkg install using the repos already available
# on the machine. You can learn more about the pkg state here:  https://docs.saltproject.io/en/latest/ref/states/all/salt.states.pkg.html#salt.states.pkg.installed
Install_Firefox:
  pkg.installed:
    - name: firefox

################################################################################

# The following example installs Google Chrome on RedHat.
# This state shows how to specify a source URL for the package.  See the docs
# for more information:  https://docs.saltproject.io/en/latest/ref/states/all/salt.states.pkg.html#salt.states.pkg.installed
Install_Google_Chrome:
  pkg.installed:
    - sources:
      - google-chrome-stable: https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
    - skip_verify: true
