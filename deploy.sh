#!/usr/bin/env sh

final="$(ipfs add -r build/ | tail -n 1 | sed 's/added //g' | sed 's/ build//g')"
ipfs name publish "$final"
