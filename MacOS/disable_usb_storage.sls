################################################################################
#  
#  Bacon Unlimited
#  __________________
#  
#   [2018] - [2021] Bacon Unlimited 
#   All Rights Reserved.
#  
#  NOTICE:  All information contained herein is, and remains
#  the property of Bacon Unlimited and its suppliers,
#  if any.  The intellectual and technical concepts contained
#  herein are proprietary to Bacon Unlimited
#  and its suppliers and may be covered by U.S. and Foreign Patents,
#  patents in process, and are protected by trade secret or copyright law.
#  Dissemination of this information or reproduction of this material
#  is strictly forbidden unless prior written permission is obtained
#  from Bacon Unlimited.
################################################################################

# This state disables write access to exteranl storage on macOS using a
# launch daemon and script.
Create script to eject external drives:
  file.managed:
    - name: /usr/local/bin/usb_disabler.sh
    - mode: 0744
    - contents: |
        #!/bin/bash

        for disk in $(diskutil list | grep external | awk '{ print $1 }');
        do 
          diskutil unmountDisk $disk	
          diskutil eject $disk
        done

Create launch daemon to eject external drives:
  file.managed:
    - name: /Library/LaunchDaemons/io.twe.usb_disabler.plist
    - mode: 0644
    - contents: |
        <?xml version="1.0" encoding="UTF-8"?>
        <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
        <plist version="1.0">
          <dict>
            <key>EnvironmentVariables</key>
            <dict>
              <key>PATH</key>
              <string>/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:</string>
            </dict>
            <key>Label</key>
            <string>io.twe.usb_disabler</string>
            <key>Program</key>
            <string>/usr/local/bin/usb_disabler.sh</string>
            <key>RunAtLoad</key>
            <true/>
            <key>StartOnMount</key>
            <true/>
            <key>StandardOutPath</key>
            <string>/tmp/usb_disabler.stdout</string>
            <key>StandardErrorPath</key>
            <string>/tmp/usb_disabler.stderr</string>
          </dict>
        </plist>
    - require:
      - file: /usr/local/bin/usb_disabler.sh

Load launch daemon on initial install or changes:
  cmd.run:
    - name: launchctl load -w /Library/LaunchDaemons/io.twe.usb_disabler.plist
    - unless:
      - launchctl list io.twe.usb_disabler
