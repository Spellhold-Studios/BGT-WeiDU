#! /bin/sh
WEIDU="$( which WeiDU )"
if test "$WEIDU" = ""
then
echo "ERROR: could not find WeiDU executable inside the system path."
else
ln -fs "$WEIDU" /tmp/bgt-weidu/weidu
fi