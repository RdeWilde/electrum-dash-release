#!/bin/sh
wineboot && sleep 5
wineboot --update

#cp /home/robert/.wine/drive_c/Python27/Lib/site-packages/requests/cacert.pem .
mkdir certs
cp /opt/electrum-ion/packages/requests/cacert.pem certs/
cp /home/robert/.wine/drive_c/Python27/Lib/site-packages/requests/cacert.pem certs/
#cp /opt/electrum-ion/packages/requests/cacert.pem /home/robert/.wine/drive_c/Python27/Lib/site-packages/requests/
cp /opt/electrum-ion/packages/requests/cacert.pem .
dir
wine "$PYHOME\\Scripts\\easy_install.exe" pyOpenSSL==0.15
wine python "C:/PyInstaller/pyinstaller.py" -y "contrib/build-wine/deterministic.spec" --name electrum
cp /opt/electrum-ion/contrib/build-wine/electrum.nsi /root/.wine/drive_c/
cp /opt/electrum-ion/icons/electrum.ico /root/.wine/drive_c/
cp /opt/electrum-ion/icons/electrum.ico /root/.wine/drive_c/electrum/
cd /root/.wine/drive_c/electrum/
wine c:\\"Program Files (x86)"\\NSIS\\makensis.exe -V2 c:\\electrum.nsi
