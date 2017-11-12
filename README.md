# electrum-ion release scripts

## Linux

```
$ docker build -f Dockerfile-linux -t RdeWilde/electrum-ion-release:Linux .
$ git clone git@github.com:RdeWilde/electrum-ion.git
$ docker run --rm -v $(pwd):/opt \
    -w /opt/electrum-ion -t rdewilde/electrum-ion-release:Linux \
    /opt/build_linux.sh
```
	
Installation:

```
$ sudo apt-get install -y python-qt4 libusb-1.0.0-dev libudev-dev
$ pip install electrum-ion-2.6.4.tar.gz
```

Uninstallation:

```
$ pip uninstall -y electrum-ion
```

## Windows (WINE)

```
$ ./python-trezor-wine.sh
$ ./python-x11_hash-wine.sh
$ docker build -f Dockerfile-wine -t rdewilde/electrum-ion-release:Wine .
$ git clone git@github.com:RdeWilde/electrum-ion.git
$ docker run --rm -v $(pwd):/opt \
    -v $(pwd)/electrum-ion/:/root/.wine/drive_c/electrum \
    -w /opt/electrum-ion -t rdewilde/electrum-ion-release:Wine \
    /opt/build_wine.sh
```
