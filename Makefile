BASE=$(PWD)

all:	isomk

#site-gen:
	#sw $(BASE)/site
	#rsync -avz site/ user@rhost:htdocs/

# works from git profile store
isomk:
	sw $(BASE)/isomk
	rsync -auz isomk.static/ kisom@kyleisom.net:public_html/

clean:
	#rm -rf $(BASE)/site.static		# sample clean command
	rm -rf $(BASE)/isomk.static


