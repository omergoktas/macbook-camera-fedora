# Hassle-free Macbook Camera Driver for Fedora Linux
This project is simply a hassle-free version of the <b>Apple Facetime HD</b> camera driver provided by [@patjak](https://github.com/patjak/facetimehd). The installation script is quite simple, you should be able to modify it for other Linux distributions easily. Although the `facetimehd-master.zip` is not required, it is provided in case the upstream project disappears (contains the source codes of the driver). SHA256 hashes of the binary files provided in this repository should match the hashes provided by the [upstream project](https://github.com/patjak/facetimehd-firmware/blob/master/extract-firmware.sh). The driver should automatically rebuild itself every time the Linux kernel is updated (thanks to the [dkms](https://en.wikipedia.org/wiki/Dynamic_Kernel_Module_Support)).
## How to install
Type in the following commands into your terminal window and then <i>reboot</i> your computer:
```
git clone https://github.com/omergoktas/macbook-camera-fedora
cd macbook-camera-fedora
chmod +x install.sh
sudo ./install.sh
```
## Test
You may use the following commands to try out the camera:
```
sudo dnf install mplayer
mplayer tv:// -tv driver=v4l2:width=320:height=240:device=/dev/video0 -fps 30
```

## More
More info can be found [here](https://github.com/patjak/facetimehd/wiki) and [here](https://github.com/patjak/facetimehd/wiki/Installation).
