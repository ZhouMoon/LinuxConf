echo "====START===="
echo "----vimrc----删除----"
rm -f .vimrc;
echo "----vimrc----复制----"
ln -f LinuxConf/vimrc/.vimrc .vimrc;
echo "----vim----删除----"
rm -rf .vim;
echo "----vim----复制----"
ln -sf LinuxConf/vimrc/.vim .vim
# IDEA
echo "----idea---复制----"
ln -f LinuxConf/IDEA/.ideavimrc  .ideavimrc;
echo "====END===="
