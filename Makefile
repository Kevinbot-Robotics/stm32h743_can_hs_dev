all: env pinout ibom docs

env:
	python -m venv .venv --system-site-packages
	./.venv/bin/python -m pip install -r requirements.txt

pinout:
	./.venv/bin/pinion generate rendered --board stm32h743_can_hs.kicad_pcb --specification pinion.yaml pinion/ --renderer normal
	cp -vf pinion/pinion.css docs/static/pinion
	cp -vf pinion/pinion.js docs/static/pinion
	cp -vf pinion/front.png docs/static/pinion/stm32h743-can-hs
	cp -vf pinion/front.png docs/static/pinion/stm32h743-can-hs
	cp -vf pinion/back.png docs/static/pinion/stm32h743-can-hs
	cp -vf pinion/spec.json docs/static/pinion/stm32h743-can-hs

ibom:
	./.venv/bin/generate_interactive_bom stm32h743_can_hs.kicad_pcb --no-browser --dark-mode --show-fields "Value,Footprint,manf#"
	cp -vf bom/ibom.html docs/static/ibom/stm32h743-can-hs.html

docs:
	rm -rv ./public
	hugo --buildDrafts

clean:
	rm -rfv .venv
	rm -rfv ./public
