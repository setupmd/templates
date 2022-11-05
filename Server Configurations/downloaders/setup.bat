ECHO "This file will download the latest version of Purpur, create an eula text file with the value of True, create a run.bat file with the required startup args using 4gb ram. This file will then close and delete."

mkdir %USERPROFILE%/Desktop/MinecraftServer

powershell -Command "Invoke-WebRequest https://api.purpurmc.org/v2/purpur/latest/latest/download  -OutFile %USERPROFILE%/Desktop/MinecraftServer/server.jar"

TYPE eula=true > %USERPROFILE%/Desktop/MinecraftServer/eula.txt

TYPE "java -Xmx6G -Xms6G -jar server.jar nogui" > %USERPROFILE%/Desktop/MinecraftServer/run.bat

del %0
