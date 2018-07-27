set t 'stellarized.colortemplate'
python template-generator.py > $t
vim -c 'Colortemplate! ~/Documents/code/vim/stellarized' $t -c'q' -c'q' -c'q'
sed -i '/Last Updated/d' ../colors/stellarized.vim
