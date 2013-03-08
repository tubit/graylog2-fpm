NAME=graylog2-web-interface
VERSION=0.10.2
PREFIX=/opt/graylog2-web
MAINTAINER="Dennis Konert <dkonert@gmail.com>"
ITERATION=1
ARCH=all
DEPENDENCY="ruby1.9.1-full"
AFTER_INSTALL=after-install.sh
CONFIGS=config/*.yml
.PHONY: package

all: package

clean:
	rm -f $(NAME)_$(VERSION)-$(ITERATION)_$(ARCH).deb

rmsource:
	rm -f $(NAME)-$(VERSION).tar.gz

$(NAME)-$(VERSION).tar.gz:
	wget http://download.graylog2.org/$(NAME)/$(NAME)-$(VERSION).tar.gz

package: $(NAME)-$(VERSION).tar.gz clean
	fpm -t deb -s tar -C $(NAME)-$(VERSION) --prefix $(PREFIX) -n $(NAME) -v $(VERSION) --iteration $(ITERATION) --config-files $(CONFIGS) -a $(ARCH) -m $(MAINTAINER) --depends $(DEPENDENCY) --after-install $(AFTER_INSTALL) $(NAME)-$(VERSION).tar.gz


