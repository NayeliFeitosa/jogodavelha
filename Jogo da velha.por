programa
{
	
	funcao inicio()
	{
		caracter jogo[3][3]
		inteiro l, c, linha, coluna, jogador = 1, jogadas = 0, ganhador = 0


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
		
		/* faca{
			faca{
				escreva ("\nJogador ", jogador, " digite a linha da jogada desejada: ")
				leia (linha)
				escreva ("\nJogador ", jogador, " digite a coluna da jogada desejada: ")
				leia (coluna)	
			}enquanto (linha < 0 ou linha > 2 ou coluna < 0 ou coluna > 2)
		}enquanto(jogo[linha][coluna] != ' ') */

		
		faca{
			faca{
				escreva ("\nJogador ", jogador , " escolha a linha para sua jogada: ")
				leia (linha)
				escreva ("Jogador ", jogador , " escolha a coluna para sua jogada: ")
				leia (coluna)
				se (linha >= 3 ou coluna >= 3)
					escreva ("\n**Digite posições válidas para o jogo da velha**\n")
			}enquanto (linha < 0 ou linha > 2 ou coluna < 0 ou coluna > 2)
		}enquanto (jogo[linha][coluna] != ' ')
			escreva (jogo[linha][coluna]) /* pq isso não imprime o jogo na tela pra eu poder ver inde foi a jogada?*/
		
		se (jogador == 1){ //deve existir um jeito muito melhor de fazer isso, mas eu estou feliz que consegui mesmo que não seja o melhor jeito
			jogador++
			escreva ("\nJogador ", jogador , " escolha a linha para sua jogada: ")
				leia (linha)
				escreva ("Jogador ", jogador , " escolha a coluna para sua jogada: ")
				leia (coluna)
				se (linha >= 3 ou coluna >= 3)
					escreva ("\n**Digite posições válidas para o jogo da velha**\n")
			
		}


		/* tentei fazer assim, mas não dá certo, pq?
		se (jogador == 1) { 
			faca{
			faca{
				escreva ("\nJogador ", jogador , " escolha a linha para sua jogada: ")
				leia (linha)
				escreva ("Jogador ", jogador , " escolha a coluna para sua jogada: ")
				leia (coluna)
				se (linha >= 3 ou coluna >= 3)
					escreva ("\n**Digite posições válidas para o jogo da velha**\n")
			}enquanto (linha < 0 ou linha > 2 ou coluna < 0 ou coluna > 2)
		}enquanto (jogo[linha][coluna] != ' ')
		jogador++
		} */
		
		
		
		se (jogador == 1){
			jogo[linha][coluna] = '0'
			jogador++
		}
		senao {
			jogo[linha][coluna] = 'X'
			jogador = 1
		}
		jogadas++ 


		

		//VERIFICANDO GANHADORES - Um comentário sobre isso: eu sei o que eu preciso fazer, mas é muito difícil pensar como pedir pro programa fazer isso, quando acho a solução na internet fico com raiva
		//de não ter pensado nela sozinha pq é sempre muito ÓBVIO, eu TIVE que olhar no tutorial pra fazer as linhas, vou tentar fazer as diagonais sozinha usando a mesma lógica.
		

		//linhas
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 188; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */