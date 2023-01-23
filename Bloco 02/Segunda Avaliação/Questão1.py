# Aluno: Maycon Douglas Silva Soares
#
# Primeira Questão - Prova Prog1 - Avaliação 2
#
import sys

def ver_vivos(lista):
    if lista.count('*') == len(lista) - 1:        
        for k in range(len(lista)):
            if lista[k] != '*':
                return lista[k]
    else:
        return 0
    
def elimina_item(dados):
    
    n,k = list(map(int,dados.split()))
    
    lista = list()
    for i in range(1,n+1):
        lista.append(i)
    podequebrar = False
    
    c = 1
    cont = 0
    while True:
        while c <= k:
            if cont >= len(lista):
                cont = 0
            if ver_vivos(lista):
                print(ver_vivos(lista))
                podequebrar = True
                break
            if lista[cont] == '*':
                    c-=1
            elif c == k and lista[cont] != '*':
                del lista[cont]
                lista.insert(cont,'*')
                
            
                    
            c += 1
            cont +=1
        if podequebrar:
            break
        c = 1
        
def main():
    c = 0
    n = sys.stdin.readline()
    while c < 3:
        d = sys.stdin.readline()
        elimina_item(d)
        c+=1

if __name__ == '__main__':
    main()