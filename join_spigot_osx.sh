cd Minecraft_Tools/MinecraftClient/osx-x64

touch output.log
./MinecraftClient > output.log &

echo "Joining Spigot Server..."
while true; do
  if tail output.log | grep -q "joined the game" ; then
    break
  fi
  sleep 0.1
done
echo "Done"