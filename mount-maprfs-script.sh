echo "Mounting MapR Filesystem in /mapr using simple mount command:"
echo ""
echo "mount -o vers=3,hard,nolock MAPR_HOST:/mapr /mapr"
echo ""
mount -o vers=3,hard,nolock MAPR_HOST:/mapr /mapr
echo "Mount completed. Open a 'filebrowser' and look for the /mapr folder."
read -n 1 -s -r -p "Press any key to close this window."