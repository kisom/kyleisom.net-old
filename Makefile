# site-tools Makefile to build and push a site built using smu and sw.
# 	- Kyle Isom <coder@kyleisom.net>

# directory containing site source
SITE=isomk

# ensure RHOST has a trailing slash!
#     e.g. foo@spam:baz/
RHOST=kisom@kyleisom.net:public_html/ 

# don't touch - we need this for sw to work properly
# watch out for trailing spaces! woe be unto him who allows trailing spaces!
BASE=$(PWD)

all:	site-gen site-push

site-gen:
	sw $(BASE)/$(SITE)
	rsync -auvz -e "ssh" $(SITE).static/ $(RHOST)

site-push:
	rsync -auvz -e "ssh" $(SITE).static/ $(RHOST)

clean:
	rm -rf $(SITE).static

target-list:
	@echo "valid targets:"
	@echo "	site-gen: build site and push it "


.PHONY: all clean site-gen

