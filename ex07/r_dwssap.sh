#!/bin/sh
# sobre estilo dos comentários: https://stackoverflow.com/a/12797512
grep -v '^#' /etc/passwd | `# remove comentários (linhas iniciadas por #)` \
	awk 'BEGIN{FS=":"} NR % 2 == 0 {print $1}' | `# pega só o login (primeiro campo separado por ":") das linhas pares` \
	rev | `# inverte os caracteres` \
	sort -r | `# ordena em ordem alfabética inversa` \
	sed -n "${FT_LINE1},${FT_LINE2}p" | `# pega as linhas de $FT_LINE1 até $FT_LINE2` \
	sed -z 's/\n$/./;s/\n/, /g' `# transforma a quebra de linha final em "." e as demais em ", "`