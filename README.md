**Application**

[Tvheadend](https://tvheadend.org/)

**Application description**

Tvheadend is a TV streaming server and recorder for Linux, FreeBSD and Android supporting DVB-S, DVB-S2, DVB-C, DVB-T, ATSC, ISDB-T, IPTV, SAT>IP and HDHomeRun as input sources. Tvheadend offers the HTTP (VLC, MPlayer), HTSP (Kodi, Movian) and SAT>IP streaming. Multiple EPG sources are supported (over-the-air DVB and ATSC including OpenTV DVB extensions, XMLTV, PyXML).

**Build notes**

Latest stable Tvheadend release from Arch Linux AUR using Packer to compile.

**Usage**
```
docker run -d \
    -p 9981:9981 \ 
    --name=<container name> \
    -v <path for data files>:/data \
    -v <path for config files>:/config \
    -v /etc/localtime:/etc/localtime:ro \
    binhex/arch-tvheadend
```

Please replace all user variables in the above command defined by <> with the correct values.

**Access application**

`http://<host ip>:9981`

**Example**
```
docker run -d \
    -p 9981:9981 \ 
    --name=tvheadend \
    -v /apps/docker/tvheadend/recorded:/data \
    -v /apps/docker/tvheadend:/config \
    -v /etc/localtime:/etc/localtime:ro \
    binhex/arch-tvheadend
```

**Notes**

N/A

[Support forum](http://lime-technology.com/forum/index.php?topic=45837.0)