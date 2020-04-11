symlink: covid
	ln -s "$(shell pwd)/covid" /usr/local/bin/covid

clean:
	rm /usr/local/bin/covid
