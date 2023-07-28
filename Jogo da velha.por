programa
{
	
	funcao inicio()
	{
		caracter jogo[3][3]
		inteiro l, c, linha, coluna, jogador = 1, ganhador = 0


		//Aqui a matriz foi construída
		para (l = 0; l < 3; l++) {
			para (c = 0; c <3; c++)
			jogo[l][c] = ' '
		}

		//Aqui está sendo definifo como será construída a matriz, as repetições recebem suas parte mais gráfica pra deixar com a cara do jogo da velha tradicional
		
		escreva ("\n0     1    2\n\n")
		para (l = 0; l < 3; l++) {
			para (c = 0; c <3; c++){
			escreva(" ", jogo[l][c])
			se (c < 2)
				escreva (" | ")
				
			se (c == 2)
				escreva ("   ", l, " ")
			}
			se (l < 2)
				escreva ("\n------------")
				
			escreva ("\n")
	}

		//Recebendo as jogadas
		
		faca{
			faca{
				escreva ("\nJogador", jogador, "digite linha e coluna da jogada desejada: ")
				leia (linha, coluna)	
			}enquanto (linha < 0 ou linha > 2 ou coluna < 0 ou coluna > 2)
		}enquanto(jogo[linha][coluna] != ' ')



		// Definindo os JOGADORES
		se (jogador == 1){
			jogo[linha][coluna] = '0'
			jogador++
		}
		senao {
			jogo[linha][coluna] == 'X'
			jogador = 1
		}
		

		//VERIFICANDO GANHADORES - Um comentário sobre isso: eu sei o que eu preciso fazer, mas é muito difícil pensar como pedir pro programa fazer isso, quando acho a solução na internet fico com raiva
		//de não ter pensado nela sozinha pq é sempre muito ÓBVIO, eu TIVE que olhar no tutorial pra fazer as linhas, vou tentar fazer as diagonais sozinha usando a mesma lógica.


		//linhas
		para (l = 0; l < 3; l++){
			se(jogo[l][0]) == '0' e jogo[l][1] == '0' e jogo[l][2] == '0')
				ganhador = 1
		}

		para (l = 0; l < 3; l++){
			se(jogo[l][0]) == 'X' e jogo[l][1] == 'X' e jogo[l][2] == 'X')
				ganhador = 2


		//colunas
		para (c = 0; c < 3; l++){
			se(jogo[c][0]) == '0' e jogo[c][1] == '0' e jogo[c][2] == '0')
				ganhador = 1

		para (c = 0; c < 3; l++){
			se(jogo[c][0]) == '0' e jogo[c][1] == '0' e jogo[c][2] == '0')
				ganhador = 2

		//diagonais

			se (jogo [0][0] == '0' e jogo[1][1] == '0' e jogo[2][2] == '0')
				ganhador = 1


		
			se (jogo [0][0] == 'X' e jogo[1][1] == 'X' e jogo[2][2] == 'X')
				ganhador = 2

		
			se (jogo [0][2] == '0' e jogo[1][1] == '0' e jogo[2][0] == '0')
				ganhador = 1


	
			se (jogo [0][2] == 'X' e jogo[1][1] == 'X' e jogo[2][0] == 'X')
				ganhador = 2
		}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 482; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */