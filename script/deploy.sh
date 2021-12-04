#! /bin/sh

alias deploy_node="node"

ALI_HOST=39.98.143.124

function node(){
	npm run build
	tar -cf public.tar public && echo '压缩文件'
	deploy_path=/root/$1
	scp public.tar root@$ALI_HOST:$deploy_path/ && echo '发布文件'
	ssh root@$ALI_HOST "cd $deploy_path && rm -rf public/  && tar -xvf public.tar" && echo '发布完成'
	rm -rf public*
}



