sed -i -e "s/ATC_API = {/ATC_API = {'ATCD_PORT': ${ATCD_LISTEN_PORT},/" ./atcui/settings.py

sed -i -e "s/{{ATCD_LISTEN_PORT}}/${ATCD_LISTEN_PORT}/
    s/{{ATCD_WAN}}/${ATCD_WAN}/
    s/{{ATCD_LAN}}/${ATCD_LAN}/
    s/{{ATCD_MODE}}/${ATCD_MODE}/
    s/{{ATCD_OPTIONS}}/${ATCD_OPTIONS}/
    s/{{ATCD_BURST_SIZE}}/${ATCD_BURST_SIZE}/" ./supervisord.conf

# start all the services
/usr/local/bin/supervisord -n
