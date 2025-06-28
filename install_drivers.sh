#Step 1 - Clearing drivers

sudo apt purge ^librtlsdr
sudo rm -rvf /usr/lib/librtlsdr*
sudo rm -rvf /usr/include/rtl-sdr*
sudo rm -rvf /usr/local/lib/librtlsdr*
sudo rm -rvf /usr/local/include/rtl-sdr*
sudo rm -rvf /usr/local/include/rtl_*
sudo rm -rvf /usr/local/bin/rtl_*

# Step 2 

# Next you can install the RTL-SDR Blog drivers using the following.

sudo apt-get install libusb-1.0-0-dev git cmake pkg-config build-essential
git clone https://github.com/rtlsdrblog/rtl-sdr-blog
cd rtl-sdr-blog/
mkdir build
cd build
cmake ../ -DINSTALL_UDEV_RULES=ON
make
sudo make install
sudo cp ../rtl-sdr.rules /etc/udev/rules.d/
sudo ldconfig

# Step 3: Build SDR++
echo 'blacklist dvb_usb_rtl28xxu' | sudo tee --append /etc/modprobe.d/blacklist-dvb_usb_rtl28xxu.conf

rtl_test