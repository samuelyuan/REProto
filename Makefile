all: game.gbc

# Recursive `wildcard` function.
rwildcard = $(foreach d,$(wildcard $(1:=/*)),$(call rwildcard,$d,$2) $(filter $(subst *,%,$2),$d))

asm_files :=  $(call rwildcard,src,*.asm)

%.2bpp: %.png
	rgbgfx -o $@ $<

%.1bpp: %.png
	rgbgfx -d 1 -o $@ $<

game.o: game.asm $(asm_files)
	rgbasm --preserve-ld --nop-after-halt -o game.o game.asm

game.gbc: game.o
	rgblink -n game.sym -m game.map -o $@ $<

	@if which md5sum &>/dev/null; then md5sum $@; else md5 $@; fi

clean:
	rm -f game.o game.gbc game.sym game.map
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +
