echo "Mounting MapR Filesystem in /mapr"
mount -o vers=3,hard,nolock MAPR_HOST:/mapr /mapr
read -n 1 -s -r -p "Mount completed. Open a 'filebrowser' and look for the /mapr folder. \nPress any key to close this window."