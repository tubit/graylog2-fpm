NAME=graylog2-server
VERSION=0.11.0
PREFIX=/opt/graylog2-server
MAINTAINER="Dennis Konert <dkonert@gmail.com>"
ITERATION=1
ARCH=all
DEPENDENCY="libc6, java7-runtime-headless | java6-runtime-headless | java7-runtime | java6-runtime"
.PHONY: package

all: package

clean:
	rm -f $(NAME)_$(VERSION)-$(ITERATION)_$(ARCH).deb

rmsource:
	rm -f $(NAME)-$(VERSION).tar.gz

$(NAME)-$(VERSION).tar.gz:
	wget http://download.graylog2.org/$(NAME)/$(NAME)-$(VERSION).tar.gz

package: $(NAME)-$(VERSION).tar.gz clean
	fpm -t deb -s tar -C $(NAME)-$(VERSION) --prefix $(PREFIX) -n $(NAME) -v $(VERSION) --iteration $(ITERATION) -a $(ARCH) -m $(MAINTAINER) --depends $(DEPENDENCY) $(AFTER_INSTALL) $(NAME)-$(VERSION).tar.gz

