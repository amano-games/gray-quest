.PHONY: close
.PHONY: clean
.PHONY: build
.PHONY: run
.PHONY: copy

SDK=$(PLAYDATE_SDK_PATH)

SDK_BIN=$(SDK)/bin
SDK_DISK=$(SDK)/Disk/Games
GAME=grayscale-adventure
GAME_PATH=$(SDK_DISK)/$(GAME).pdx
SIM=Playdate Simulator


build: close clean compile run

run: open


close:
	./close-sim.sh

clean:
	rm -rf '$(SDK_DISK)/$(GAME).pdx'

compile: source/main.lua
	"$(SDK_BIN)/pdc" -sdkpath $(SDK) 'source' '$(GAME_PATH)'

release: source/main.lua
	"$(SDK_BIN)/pdc" -sdkpath $(SDK) 'source' '$(GAME).pdx'

open:
	'$(SDK_BIN)/PlaydateSimulator' '$(GAME_PATH)'

