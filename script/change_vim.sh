# !bin/sh
#
#
function change_lua_vim(){
  unlink ~/.config/nvim/init.vim
  ln -s ~/software/config/newnvim/init.lua ~/.config/nvim/init.lua
  ln -s ~/software/config/newnvim/lua ~/.config/nvim/lua
}

function change_vim(){
  unlink ~/.config/nvim/init.lua
  unlink ~/.config/nvim/lua
  ln -s ~/software/config/nvim/init.vim ~/.config/nvim/init.vim
}

if [ $1==='lua' ] 
then
  change_lua_vim
else
   change_vim
fi



