#!/bin/sh
#A variável NR é populada automaticamente pelo awk com o número da linha
#Como não foi especificado um bloco de comandos (entre {}), o awk executa uma ação padrão de imprimir a linha quando a condição é satisfeita

ls -l | awk 'NR % 2 == 1'