VERSION?="0.1.0"

default: bin

# bin generates the releaseable binaries for commit
bin:
	go get github.com/PaloAltoNetworks/pango
	sh -c "./scripts/build.sh"


.PHONY: bin default
