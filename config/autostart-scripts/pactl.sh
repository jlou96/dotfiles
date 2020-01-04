#!/bin/sh

src=alsa_input.usb-Blue_Microphones_Yeti_Stereo_Microphone_FST_2018_05_18_95783-00.iec958-stereo
snk=alsa_output.usb-NuForce_NuForce___DAC_2-01.analog-stereo

# Set defaults
pactl set-default-source $src
pactl set-default-sink   $snk

# Unsuspend if necessary
if pactl list sources short | grep $src | grep -q 'SUSPENDED'; then
    pactl suspend-source $src false
fi

if pactl list sinks short | grep $snk | grep -q 'SUSPENDED'; then
    pactl suspend-sink $snk false
fi

