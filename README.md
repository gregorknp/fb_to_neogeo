# fb_to_neogeo
Simple script to move NeoGeo roms from FinalBurnNeo folder to NeoGeo folder in a Batocera system

If you happen to own a Final Burn Neo rom set, you could probably realized that NeoGeo games are together with the other arcade games. 
Batocera has its own folder for NeoGeo games so maybe you want to separate NeoGeo games so they are located in their own folder making them easier to find.

The idea of this little script is to automate the action of locating and moving all NeoGeo roms from Final Burn Neo folder to their own folder.

I have tried this in a Batocera 39 Raspberry Pi 5 system. I guess it is compatible with other Batocera versions but I cannot be 100% sure that it will still work in another system different from Batocera.

Please note that the roms are moved from one location to the other so the process cannot be undone unless you move the roms back from the new location to the old one.

Another important thing to highlight: The script assumes that NeoGeo roms folder is /userdata/roms/neogeo

Steps:

1. Copy both the script and the rom list file to the folder where your Final Burn Neo roms are located. In my case /userdata/roms/fbneo/arcade.
2. Move to the FBN roms folder.
3. Make sure the script has execution permission. If not, give the script execution permission with chmod +x.
4. Execute the script as follows: ./fb_to_neogeo.sh ./neogeo_roms_list.txt

The script will iterate over all roms in the rom list file and will move each game to the NeoGeo folder. If the game is properly moved, you will see a meesage. If the game is missing, you will see an error and the script will iterate over the next game on the list.

I think that's pretty much all you need to make it work!
