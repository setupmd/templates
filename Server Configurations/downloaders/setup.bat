mkdir %USERPROFILE%\MinecraftServer

echo "eula=true" > %USERPROFILE%\MinecraftServer\eula.txt

echo "java -Xmx4G -Xms4G -jar server.jar nogui" > %USERPROFILE%\MinecraftServer\run.bat

powershell -Command "Invoke-WebRequest https://api.purpurmc.org/v2/purpur/latest/latest/download  -OutFile %USERPROFILE%\MinecraftServer\server.jar"

del setup.bat
