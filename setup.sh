#!/bin/bash
#DOT_FILES=(.bashrc)
DOT_DIRECTORY="${HOME}/dotfiles"
DOT_CONFIG_FOLDER=(awesome)
for file in .??*
do
   if [ -e ${HOME}/${file} ]; then
      echo ${file}"は存在します。"   
   else
      echo ${file}のシンボリックリンクを作成。
      ln -snv ${DOT_DIRECTORY}/${file} ${HOME}/${file}
   fi
done

#fonts.conf -> .config/fontconfig/
#awesome -> .config/
#.vim ->
ln -snv ${DOT_DIRECTORY}/fonts.conf ${HOME}/.config/fontconfig/fonts.conf
ln -snv ${DOT_DIRECTORY}/awesome ${HOME}/.config/
