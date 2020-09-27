#!/bin/bash
# execute this file ONLY IF you had run the 'bbb_preset.sh' file presviously
# It's meant to revert to default BBB configs
rm /opt/freeswitch/etc/freeswitch/autoload_configs/conference.conf.xml
mv /opt/freeswitch/etc/freeswitch/autoload_configs/conference.conf.xml.bak /opt/freeswitch/etc/freeswitch/autoload_configs/conference.conf.xml

rm /opt/freeswitch/etc/freeswitch/autoload_configs/opus.conf.xml
mv /opt/freeswitch/etc/freeswitch/autoload_configs/opus.conf.xml.bak /opt/freeswitch/etc/freeswitch/autoload_configs/opus.conf.xml

rm /opt/freeswitch/etc/freeswitch/dialplan/default/bbb_conference.xml
mv /opt/freeswitch/etc/freeswitch/dialplan/default/bbb_conference.xml.bak /opt/freeswitch/etc/freeswitch/dialplan/default/bbb_conference.xml

rm /opt/freeswitch/etc/freeswitch/dialplan/default/bbb_echo_to_conference.xml
mv /opt/freeswitch/etc/freeswitch/dialplan/default/bbb_echo_to_conference.xml.bak /opt/freeswitch/etc/freeswitch/dialplan/default/bbb_echo_to_conference.xml
