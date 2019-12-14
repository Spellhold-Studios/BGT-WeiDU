#!/bin/sh
#Remove some redundant tilesets
rm $(ls areau000|grep -i ar10) 2>>bgt/bash.debug
rm $(ls areaw000|grep -i ar20) 2>>bgt/bash.debug
#Replaced files
rm area9900/ar9906.wed 2>>bgt/bash.debug
rm area3700/ar3709.tis 2>>bgt/bash.debug