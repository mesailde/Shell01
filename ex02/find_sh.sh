#!/bin/sh
# o comando basename remove o 'sh' e o nome dos diretórios
#o exec executa um comando pra cada objeto encontrado substituindo o {} pelo nome do arquivo
#o ';' sinaliza o final do comando

find -type f -name '*.sh' -exec basename {} .sh ';'