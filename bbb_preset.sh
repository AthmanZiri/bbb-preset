
#!/bin/bash
#Though you should use at your own risk, and by no means do we think they are correct, they might be outright nonsense, but they did improve our crackling. What these file modifications do is basically change from cdquality to video-mcu-stereo, increase max bitrate, disable most of  jitter handling, and decrease energy-level for noise suppression. 
#Also very important for us was to manually modify flags/config in browsers to disable AGC and AEC, and noise suppression. Best results were experienced in Firefox, where we could get nice stereo signal. 
#Now we are in the process of trying to create an extension for these browsers in order to disable those settings, but we are still working on it. If you had any experiences on that I would love to read!
#I hope this works for you!
# https://groups.google.com/g/bigbluebutton-dev/c/joJyywgYTTk/m/roFBwEq4EQAJ 
cp /opt/freeswitch/etc/freeswitch/autoload_configs/conference.conf.xml /opt/freeswitch/etc/freeswitch/autoload_configs/conference.conf.xml.bak
 > /opt/freeswitch/etc/freeswitch/autoload_configs/conference.conf.xml
echo "$(conference.conf.xml)" > /opt/freeswitch/etc/freeswitch/autoload_configs/conference.conf.xml


cp /opt/freeswitch/etc/freeswitch/autoload_configs/opus.conf.xml /opt/freeswitch/etc/freeswitch/autoload_configs/opus.conf.xml.bak
 > /opt/freeswitch/etc/freeswitch/autoload_configs/opus.conf.xml
echo "$(opus.conf.xml)" > /opt/freeswitch/etc/freeswitch/autoload_configs/opus.conf.xml


cp /opt/freeswitch/etc/freeswitch/dialplan/default/bbb_conference.xml /opt/freeswitch/etc/freeswitch/dialplan/default/bbb_conference.xml.bak
 > /opt/freeswitch/etc/freeswitch/dialplan/default/bbb_conference.xml
echo "$(bbb_conference.xml)" > /opt/freeswitch/etc/freeswitch/dialplan/default/bbb_conference.xml


cp /opt/freeswitch/etc/freeswitch/dialplan/default/bbb_echo_to_conference.xml /opt/freeswitch/etc/freeswitch/dialplan/default/bbb_echo_to_conference.xml.bak
 > /opt/freeswitch/etc/freeswitch/dialplan/default/bbb_echo_to_conference.xml
echo "$(bbb_echo_to_conference.xml)" > /opt/freeswitch/etc/freeswitch/dialplan/default/bbb_echo_to_conference.xml