rstat client/server utility for mrtg graphics

=================================================
Futures
=================================================

  ipfw       - Get bytes from ipfw
  snmp       - Get stats via SNMP
  iptable    - get from iptable
  net_bufs   - Get net FreeBSD buffer
  tun_count  - Get active tun interface
  load       - System load
  mysql      - Mysql Query and Slow Query
  memory     - FreeBSD memory
  memnocache - FreeBSD/Linux memory cache
  swap       - FreeBSD Swap info
  tuns_traf  - FreeBSD tun total traffic
  ng_count   - FreeBSD mpd interfaces count
  ppp_count  - Linux ppps counts
  mikrotik_ppp - Mikrotik ppp count
  mikrotik_load- Mikrotik load
  mikrotik_mem - Mikrotik memmory



=================================================
Installation:
=================================================
  # tar zxvf rstat-0.21.tgz
  # make install


Get statistic from local server


Get Statistic from remote server
/etc/inetd.conf

rstats  stream  tcp     nowait  root    /usr/local/sbin/rstats rstats

/etc/services
rstats         30003/tcp


mrtg.cnf


Make periodic start
/etc/crontab
*/5     *       *       *       *       root  /usr/local/bin/mrtg /usr/local/etc/mrtg/mrtg.cfg

indexmaker /usr/local/etc/mrtg/mrtg.cfg > index.html
