#!/bin/sh
# a ordem é importante! obase=13 vir antes de ibase=5, senão o bc tenta interpretar o 13 como um número de base 5 (em vez de base 10)
echo "obase=13; ibase=5; a=$(echo "$FT_NBR1" | tr "'\\\\\"?!" "01234"); b=$(echo "$FT_NBR2" | tr "mrdoc" "01234"); a+b" | bc | tr "0123456789ABC" "gtaio luSnemf"