if [ ! -d ~/.bashrc.d ]; then
	mkdir ~/.bashrc.d
	echo 'for d in ~/.bashrc.d/* ; do source "$d"; done' >> ~/.bash_profile
fi

for f in bashrc.d/*; do
	p=`pwd`
	fb=`basename $f`
	o="~/.bashrc.d/$fb"
	if [ ! -L ~/.bashrc.d/$fb ]; then
		ln -s $p/$f ~/.bashrc.d/$fb
	fi
done
