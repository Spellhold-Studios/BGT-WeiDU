#!/bin/sh
#Delete renamed/replaced/unused tileset files
rm area6500/ar2631.mos area7600/ar0600.mos area7800/ar0800.mos aread000/ar0514sr.bmp 2>>bgt/bash.debug
rm $(ls area6500|grep -i ar2600) 2>>bgt/bash.debug

