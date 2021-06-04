#!/bin/bash

#liste des medias possible :
listePlex=("Movies" "Shows" "Music" "AudioBook" "transcode")

#liste des containers :
listeContainer=("plex" "nzbget" "sonarr" "radarr" "overseerr" "letsencrypt" "timemachine" "portainer" "watchtower")

#special folder
listeFolder=("nzbget/download")

# add config folder

for x in $(ls ./config); do
  mkdir "config/${x}/config"
done

#add media folder
for title in $listePlex;
do
mkdir "config/plex/${title}"
done

# add special folder
for folder in $listeFolder;
do
mkdir "config/${folder}"
done