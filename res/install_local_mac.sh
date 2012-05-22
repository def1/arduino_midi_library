#!/bin/bash

if [[ -d /Applications/Arduino.app ]]
then
    
    # Define locations
    
    lib_path=/Applications/Arduino.app/Contents/Resources/Java/libraries/MIDI
    
    if [[ -d $lib_path ]]
    then
        # Remove old lib
        rm -rf $lib_path
    fi
    
    # Create folder
    mkdir $lib_path
    
    # Copy sources
    cp ../src/MIDI.cpp $lib_path
    cp ../src/MIDI.h   $lib_path
    
    # Copy resources
    cp ../res/keywords.txt $lib_path
    
    # Copy examples
    mkdir $lib_path/examples
    
    cp -r examples/* $lib_path/examples
    
    # Copy doc
    mkdir $lib_path/doc
    
    cp ../doc/* $lib_path/doc
    
else
    echo "Arduino application not found."
fi