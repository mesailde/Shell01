#!/bin/sh

#! /bin/sh
# awk é uma linguagem de programação. 
# Neste caso, o comando pega todas as linhas que contem "ether" no primeiro campo (considerando que os campos são separados por espaços)
# e executa o print, que mostra apenas o segundo, terceiro, quarto e quinto campos, separados pela quantidade de espaços solicitada no enunciado.
ifconfig | awk '$1=="ether"{print $2 "  " $3 " " $4 "  " $5}'