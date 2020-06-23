#!/bin/sh
current_path=`pwd`

if [ ! -d $current_path/jad ]; then
    echo "$current_path download...."
    cd $current_path && wget https://varaneckas.com/jad/jad158g.mac.intel.zip
    unzip -n jad158g.mac.intel.zip -d jad/ 
    rm -rf $current_path/jad158g.mac.intel.zip
fi