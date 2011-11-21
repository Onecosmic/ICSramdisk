#!/busybox sh

# init.d support
if cd /system/etc/init.d >/dev/null 2>&1 ; then
    for file in S* ; do
        if ! ls "$file" >/dev/null 2>&1 ; then continue ; fi
        /system/bin/sh "$file"
    done
fi

