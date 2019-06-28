#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:fbde2910d12ad936059703edd440d744f956b4cd; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:35165df53f2c76aad0f80d40815b5734cbbde9a9 EMMC:/dev/block/bootdevice/by-name/recovery fbde2910d12ad936059703edd440d744f956b4cd 67108864 35165df53f2c76aad0f80d40815b5734cbbde9a9:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
