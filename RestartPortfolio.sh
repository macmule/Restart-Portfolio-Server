#!/bin/sh

#### Restart Portfolio

sudo launchctl unload /Library/LaunchDaemons/com.extensis.dam-server.web.admin.launchd.plist

sleep 5

sudo launchctl unload /Library/LaunchDaemons/com.extensis.portfolio.server.elasticsearch.plist

sleep 5

sudo launchctl unload /Library/LaunchDaemons/com.extensis.portfolio.server.media.delegate.plist

sleep 5

sudo launchctl unload /Library/LaunchDaemons/com.edb.launchd.portfoliodb.plist
 
sleep 10

sudo launchctl load /Library/LaunchDaemons/com.edb.launchd.portfoliodb.plist 

sleep 5 

sudo launchctl load /Library/LaunchDaemons/com.extensis.portfolio.server.elasticsearch.plist

sleep 5

sudo launchctl load /Library/LaunchDaemons/com.extensis.portfolio.server.media.delegate.plist

sleep 5

sudo launchctl load /Library/LaunchDaemons/com.extensis.dam-server.web.admin.launchd.plist
