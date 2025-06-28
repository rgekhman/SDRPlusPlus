sudo apt update
sudo apt install libusb-1.0-0-dev git cmake build-essential pkg-config
sudo apt install debhelper

git clone https://github.com/rtlsdrblog/rtl-sdr-blog
cd rtl-sdr-blog
sudo dpkg-buildpackage -b --no-sign
cd ..

sudo dpkg -i librtlsdr0_*.deb
sudo dpkg -i librtlsdr-dev_*.deb
sudo dpkg -i rtl-sdr_*.deb

rtl_test