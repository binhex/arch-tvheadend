**Application**

[Tvheadend](https://tvheadend.org/)

**Description**

Tvheadend is a TV streaming server and recorder for Linux, FreeBSD and Android supporting DVB-S, DVB-S2, DVB-C, DVB-T, ATSC, ISDB-T, IPTV, SAT>IP and HDHomeRun as input sources. Tvheadend offers the HTTP (VLC, MPlayer), HTSP (Kodi, Movian) and SAT>IP streaming. Multiple EPG sources are supported (over-the-air DVB and ATSC including OpenTV DVB extensions, XMLTV, PyXML).

**Build notes**

Latest stable Tvheadend release from Arch Linux AUR using Packer to compile.

**Usage**
```
docker run -d \
    -p 9981:9981 \
    -p 9982:9982 \
    --name=<container name> \
    -v <path for data files>:/data \
    -v <path for config files>:/config \
    -v /etc/localtime:/etc/localtime:ro \
    --device=<path to tuner device> \
    -e UID=<uid for user> \
    -e GID=<gid for user> \
    binhex/arch-tvheadend
```

Please replace all user variables in the above command defined by <> with the correct values.

**Access HTTP**

`http://<host ip>:9981`

**Access HTSP**

`http://<host ip>:9982`

**Example**
```
docker run -d \
    -p 9981:9981 \
    -p 9982:9982 \
    --name=tvheadend \
    -v /apps/docker/tvheadend/recorded:/data \
    -v /apps/docker/tvheadend:/config \
    -v /etc/localtime:/etc/localtime:ro \
    --device=/dev/dvb/adapter0 \
    -e UID=0 \
    -e GID=0 \
    binhex/arch-tvheadend
```

**Notes**

User ID (UID) and Group ID (GID) can be found by issuing the following command for the user you want to run the container as:-

```
id <username>
```

Multiple adapters can be passed through by specifing the "--device" line multiple times, an example snipet for quad tuners:-

```
    --device=/dev/dvb/adapter0 \
    --device=/dev/dvb/adapter1 \
    --device=/dev/dvb/adapter2 \
    --device=/dev/dvb/adapter3 \
```

Alternatively, with later versions of Docker you can use wildcards, example:-

```
    --device=/dev/dvb/adapter* \
```

If you appreciate my work, then please consider buying me a beer  :D

[![PayPal donation](https://www.paypal.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MM5E27UX6AUU4)

[Support forum](http://lime-technology.com/forum/index.php?topic=46575.0)