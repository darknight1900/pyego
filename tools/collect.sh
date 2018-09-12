#!/bin/sh

# Script to run on TX2 to colllect navcam images, imu data and acs_metadata into a folder

EXP=100
G=1
NUM_IMAGES=100
F=/tmp
IMU_RATE=150 
ACS_RATE=30 
IMG_RATE=30 

echo "stopping kite"
systemctl stop kite

echo "starting capturing image, imu and acs_metadata" 

nav2kalibr --folder $F --framerate $IMG_RATE --num_imgs $NUM_IMAGES --exposure $EXP --gain $G --imu-rate $IMU_RATE --acsmeta-rate $ACS_RATE
