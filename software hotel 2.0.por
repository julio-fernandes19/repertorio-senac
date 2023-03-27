programa
{

	
	
	//variaveis globais
	inteiro convidados
	cadeia respostaMenor
	
//função que executa todas as funcionalidades do programa
	funcao inicio()
	{
		selecaoIcial()
		
		
    }

	//função que serve como menu inicial, serve para organizar melhor as funcionalidades do programa
    funcao selecaoIcial(){ 

    		cadeia selecao

		escreva("Olá, seja bem-vindo à seleção inicial, por favor digite F para fazer o orçamento de uma festa ou digite C para o orçamento das nossas acomodações")
    		leia(selecao)

    		se (selecao == "F" ou selecao == "f"){
    			
    		calculaGarcons ()
    		
    		}

    		se (selecao == "C" ou selecao == "c" ){

    			 LavanderiaEPiscina()
    			 
    		}
    }

    
	//função que inicia todas as funções necessárias pra cumprir a exigência do cliente de fazer calculos sobre orçamento de festas
	
    	funcao calculaGarcons (){
    		
    		inteiro garcons,horas
		real taxa, soma

		taxa = 10.5

		escreva ("Digite número de garçons")
		leia(garcons)

		escreva("Digite número de horas")
		leia(horas)

      

        soma = garcons * (horas * taxa)
                
        escreva("O valor final é de: " , soma)
        
    	CalculaConvidados ()
}
    

	//função que calcula se o número de convidados esta acima ou abaixo do padrão e calcula a quantidade exata de agua, café e salgadinhos
	
	funcao CalculaConvidados (){

		inteiro salgadinhos,totalSalgadinhos
		real cafe, agua, totalCafe, totalAgua
	
		
		cafe = 0.2
		agua = 0.5 
		salgadinhos = 7

		escreva (" Digite número de convidados")
		leia(convidados)

		se ( convidados > 350 ou convidados < 35) {
		 	escreva (" Número de convidados inválido")

	

		
	

		}
		
		senao {
			totalCafe = cafe * convidados
			totalAgua = agua * convidados
			totalSalgadinhos = salgadinhos * convidados

			escreva ("A quantidade de café em litros necessário é de: " , totalCafe, ", ", "a quantidade de café em litros necessário é de: " , totalCafe, ", ",  " a quantidade necessária de salgadinhos são de: ", totalSalgadinhos, ".") 
			
			
		}

		calculaCadeiras()
		
	}

	//decide o melhor auditório baseado nas informações passadas anterior e se necessário aponta a quantidade exata de cadeiras adicionais necessárias

	funcao calculaCadeiras(){
		inteiro auditorioAlfa, auditorioBeta, cadeirasAdicionais, capacidadeMaxAlfa

		auditorioAlfa = 220
		auditorioBeta = 350
		capacidadeMaxAlfa = 150


		se ( convidados > 350 ou convidados <= 0){
			escreva ("Número de convidados inválido")
		}

		se ( convidados <= 220){
		escreva("O auditório recomendado é o Alfa ")

			se ( convidados > capacidadeMaxAlfa){
				cadeirasAdicionais = convidados - capacidadeMaxAlfa
				escreva(". A quantidade de cadeiras adicionais necessárias serão de: ", cadeirasAdicionais)
			}
		}

		se (convidados > 220){
			escreva(". O auditório recomendado é o Beta")
		}
		
	}

	//menu inicial relaciona as acomodações do hotel
	
	funcao LavanderiaEPiscina(){

		cadeia opcao
		
		escreva(" Olá! Digite L para saber os preços da lavanderia ou P para os preços da piscina.")
		leia(opcao)

		se (opcao == "L" ou opcao == "l"){
			
			lavanderia()
		}

		se(opcao == "P" ou opcao == "p"){
			
			piscina()
									
			}
		senao {
			escreva("Digite um caractere válido!")	
		}
	 	
	}

	//função que estima o preço do kg de roupa baseado nos valores repassados pelo cliente

	funcao lavanderia(){

		inteiro PesoRoupas, precoMin, precoMax, valorFinalMin, valorFinalMax

		precoMin=15
		precoMax=20
		
		escreva ("Para lavagens acima de 10 kg, o preço é de 15,00 Reais por kg, para lavagens abaixo de 10 kg, o preço é de 20,00 reais por kg.")

		escreva (" Digite o peso em kilogramas de roupas para a lavagem")
		leia(PesoRoupas)

		se (PesoRoupas >= 10){
			valorFinalMin = PesoRoupas * precoMin
			escreva ("O valor total da sua lavagem é de: ", valorFinalMin, ".")
		}

		se (PesoRoupas < 10){
			valorFinalMax = PesoRoupas * precoMax
			escreva ("O valor total da sua lavagem é de: ", valorFinalMax, ".")
		}
		 
	}

	//função que regula o acesso do usuário à piscina baseado nas especificações do cliente

	funcao piscina(){

		inteiro idade
		
		
		escreva ("Para começar, digite a sua idade")
		leia(idade)

		se(idade <18){

		MenorDeIdade()
		
	}

		se(idade >= 18){
			
			perguntaExame()
		}
	}

	//função é ativada caso o usuário seja menor de idade

	funcao MenorDeIdade(){

		
		
		escreva ("você está acompanhado de um maior de idade?")
		leia(respostaMenor)

			se (respostaMenor == "Sim" ou respostaMenor == "SIM"){
				perguntaExame()
			}

			se (respostaMenor == "Não" ou respostaMenor == "NÃO" ou respostaMenor == "nao" ou respostaMenor == "NAO"){
				escreva("Providencie um acompanhante maior de 18 anos")
			}
			
		
	}

	//função ativada caso o usuário tenha respondido corretamente as ultimas perguntas

	funcao perguntaExame(){

		cadeia respostaExame

		escreva("Seu exame médico está em dia?")
		leia(respostaExame)

		se(respostaExame == "Não" ou respostaExame == "NÃO" ou respostaExame == "nao" ou respostaExame == "NAO"){
			escreva("Faça seu exame")
		}
		se(respostaExame == "Sim" ou respostaExame == "SIM" ou respostaExame == "sim"){
			escreva("Acesso à piscina autorizado")
		}
		senao{
			escreva ("Insira caracteres válidos") 
		}
	}
}

	

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1488; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */