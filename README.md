**Application**

[Tvheadend](https://tvheadend.org/)

**Description**

Tvheadend is a TV streaming server and recorder for Linux, FreeBSD and Android supporting DVB-S, DVB-S2, DVB-C, DVB-T, ATSC, ISDB-T, IPTV, SAT>IP and HDHomeRun as input sources. Tvheadend offers the HTTP (VLC, MPlayer), HTSP (Kodi, Movian) and SAT>IP streaming. Multiple EPG sources are supported (over-the-air DVB and ATSC including OpenTV DVB extensions, XMLTV, PyXML).

**Build notes**

Latest stable Tvheadend release from Arch Linux AUR.

**Usage**
```
docker run -d \
    -p 9981:9981 \
    -p 9982:9982 \
    --name=<container name> \
    -v <path for data files>:/data \
    -v <path for config files>:/config \
    -v /etc/localtime:/etc/localtime:ro \
    --device=/dev/<tuner type> \
    -e PUID=<uid for user> \
    -e PGID=<gid for user> \
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
    --device=/dev/dvb \
    -e PUID=0 \
    -e PGID=0 \
    binhex/arch-tvheadend
```

**Notes**

User ID (PUID) and Group ID (PGID) can be found by issuing the following command for the user you want to run the container as:-

```
id <username>
```
___
If you appreciate my work, then please consider buying me a beer  :D

[![PayPal donation](https://www.paypal.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MM5E27UX6AUU4)

[Support forum](http://lime-technology.com/forum/index.php?topic=46575.0)