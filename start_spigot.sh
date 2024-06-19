#!/bin/bash
cd Minecraft_Tools
cd server

java -Xms512M -Xmx1024M -jar -DIReallyKnowWhatIAmDoingISwear spigot-1.19.4.jar nogui -o true > output.log &

echo "Starting Spigot Server..."
while true; do
    if tail output.log | grep -q "Done" ; then
        break
    fi
    sleep 0.1
done
echo "Done"
