#!/bin/bash
# Run ladspa on speaker

speaker_name="soundcore"

# Run Ladspa on speaker
pacmd list-sinks | grep $speaker_name > /dev/null
# If sink doesn't exist already
if [ $? != 0 ]; then
    pacmd load-module module-ladspa-sink sink_name=$speaker_name sink_master=bluez_sink.F2_25_19_2B_E4_4B.a2dp_sink plugin=mbeq_1197 label=mbeq control=-3.2,-2.8,9.0,8.7,6.7,4.4,1.4,-0.9,-2.2,-2.1,-4.0,-0.5,4.0,8.0,9.9
fi

# Setting Default
pacmd set-default-sink $speaker_name
pacmd set-sink-mute alsa_output.pci-0000_00_1f.3.analog-stereo 0

# Getting application using pulse
application_index=( $( pacmd list-sink-inputs | grep index|cut -c12- ) ) 
# Ignoring first 3 index
for i in "${application_index[@]:2}"; do
    echo "$i"
    # Moving all application input to speaker
    pacmd move-sink-input $i $speaker_name
done
