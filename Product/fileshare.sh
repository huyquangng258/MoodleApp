sudo mkdir /mnt/pvc-97e1493a-5954-4884-932c-aeada993a456
if [ ! -d "/etc/smbcredentials" ]; then
sudo mkdir /etc/smbcredentials
fi
if [ ! -f "/etc/smbcredentials/fe450f7b0b18348c48366cd.cred" ]; then
    sudo bash -c 'echo "username=fe450f7b0b18348c48366cd" >> /etc/smbcredentials/fe450f7b0b18348c48366cd.cred'
    sudo bash -c 'echo "password=kTdyAc2jizxI4tp7P0khwjNL59BjE24xmohkTwWZCcy1xdHAWBPhdhnBIJIbKVZMqkRB12RNxf/u+ASt+sahBw==" >> /etc/smbcredentials/fe450f7b0b18348c48366cd.cred'
fi
sudo chmod 600 /etc/smbcredentials/fe450f7b0b18348c48366cd.cred

sudo bash -c 'echo "//fe450f7b0b18348c48366cd.file.core.windows.net/pvc-97e1493a-5954-4884-932c-aeada993a456 /mnt/pvc-97e1493a-5954-4884-932c-aeada993a456 cifs nofail,credentials=/etc/smbcredentials/fe450f7b0b18348c48366cd.cred,dir_mode=0777,file_mode=0777,serverino,nosharesock,actimeo=30" >> /etc/fstab'
sudo mount -t cifs //fe450f7b0b18348c48366cd.file.core.windows.net/pvc-97e1493a-5954-4884-932c-aeada993a456 /mnt/pvc-97e1493a-5954-4884-932c-aeada993a456 -o credentials=/etc/smbcredentials/fe450f7b0b18348c48366cd.cred,dir_mode=0777,file_mode=0777,serverino,nosharesock,actimeo=30
