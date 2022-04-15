# sed é um editor de texto via linha de comando
# a opção -z do sed vai executar todos os comandos na mesma entrada
#s/ é utilizado para substituir o espaço / / pela /,/ de forma global = g
# o ponto e vírgula separa a próxima substituição -> /\n/ substituir a quebr de linha por nada.

groups $FT_USER | sed -z 's/ /,/g;s/\n//'