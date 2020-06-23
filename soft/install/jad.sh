#!/bin/sh
current_path=`pwd`

if [ ! -d $current_path/jad ]; then
    echo "$current_path download...."
    cd $current_path && wget https://varaneckas.com/jad/jad158g.mac.intel.zip
    unzip -n jad158g.mac.intel.zip -d jad/ 
    rm -rf $current_path/jad158g.mac.intel.zip
    echo '####  jad环境变量' >> $current_path/../tool/base.sh
    echo "JAD_HOME=$current_path/jad" >> $current_path/tool/base.sh
    echo 'export PATH=$JAD_HOME:$PATH'>> $current_path/tool/base.sh
    echo '############## end #############' >> $current_path/tool/base.sh
    echo "" >> $current_path/tool/base.sh
fi