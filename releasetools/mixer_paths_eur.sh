#!/system/bin/sh

MIXER_PATHS=/tmp/install/bin/mixer_paths_eur.xml

if [ "$VARIANT" = "xx" ] ; then
    cp -f "$MIXER_PATHS" "/system/vendor/etc/mixer_paths.xml"
    chcon u:object_r:vendor_configs_file:s0 /system/vendor/etc/mixer_paths.xml
fi
