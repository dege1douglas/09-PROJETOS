#Em uma competição de salto em distância cada atleta tem direito a cinco saltos. 
#O resultado do atleta será determinado pela média dos cinco valores restantes. 
#Você deve fazer um programa que receba o nome e as cinco distâncias 
#alcançadas pelo atleta em seus saltos e depois informe o nome, os saltos e a média dos saltos. 
#O programa deve ser encerrado quando não for informado o nome do atleta. 
import random
salto1=[]
salto2=[]
salto3=[]
salto4=[]
salto5=[]
atleta=[]
media=0
x=0
j=10
for i in range(j):
    atleta.insert(i,str(input('Nome do atleta.\n')))
    if atleta[x]=='':
        x=1
        print('Não foi informando um nome válido. Programa finalizado.')
        break
    elif atleta[i]!='':
        j+=1
        salto1.insert(i,float(random.randint(4,8)))
        salto2.insert(i,float(random.randint(4,8)))
        salto3.insert(i,float(random.randint(4,8)))
        salto4.insert(i,float(random.randint(4,8)))
        salto5.insert(i,float(random.randint(4,8)))
    
