extends Node
#Isso é um comentário
var pontos = 5 #não tem um tipo específico
var vidaA = 5
var vidaB = 7
var nomeJogador
var jogadorPerdeu = true #variavel booleana

#Outros tipos de variáveis 
var array = [1, 2, 3]
var dic = {
	"jogador1" : "Andrelise",
	"jogador2" : "Daniel", 
}

var vezes = 0

func _ready():
#Função executada automaticamente quando executa o programa
	var nomeJogador = "Andrelise" #Palavras sempre em aspas duplas
	
	#visualizar o que está inserido na minha variável
	print (pontos)
	print(nomeJogador)
	
	#usando .self eu verifico o valor da variável quando está sendo definida fora da função
	print(self.pontos)
	
	#Realizando operações aritméticas com as variáveis 
	pontos = pontos + 2 #ou pontos +=2
	
	print("Valor de pontos e:", pontos)
	
	#Utilizando operadores lógicos 
	
	var resultado = (vidaA > vidaB)
	print(resultado)
	
	var resultadoB = (vidaB == 5) or (pontos == 2) #"OU = OR" E "E = AND"
	print(resultadoB)
	
	#Tomando decisões
	if pontos > 3 :
		print("Podemos passar de fase")
	else: # não existe else if e sim elif que equivale ao else if 
		print("Tente novamente")	
	
	
	print (array)
	print(array[2]) #Pegando um elemento específico do meu array contando do zero
	#para adicionar um item basta 
	array.append("Item adicionado")
	print(array)
	
	#printando o que contem no "sumario" na posição do cabeçalho no caso jogador1
	print(dic.jogador1)
	#posso modificar o conteudo
	dic.jogador1 = "Felpudo"
	#posso tambem adicionar novos itens
	dic.jogador3 = "Snoop"
	print(dic.jogador3)
	
	#Realizando repetições
	while vezes < 100:
		print("Ola!")
		vezes +=1
		print(vezes)
	
	for i in range(3): #vai de zero a 2
		print(i)
	
	for i in range(1, 7): #quero que va de 1 a 6
		print(i)

	for i in range(1, 100, 3): #quero que va de 1 a 100 de 3 em 3
		print(i)
	
	#Chamando funções
	var x = soma(3, 7)
	print(x)
	#O pass é usado quando a minha função não tem nada 
	
#Criando funções 
func soma(valor1, valor2):
	var resultado = valor1 + valor2
	return resultado