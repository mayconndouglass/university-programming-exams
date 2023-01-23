#
# Primeira Questão - Prova Prog1
#
import sys

def verifica_ISBN(cod):
    #Remove os hífens
    #cod = cod.readline()
    cod = cod.replace('-','').strip()
    cod = list(cod)
    if 'X' in cod:
        cod[-1] = '10'
    
    # Testando se há caracteres especiais
    teste = ['0','1','2','3','4','5','6','7','8','9','10',]
    for c1 in range(10):
        for c2 in range(10):
            if cod[c1] == teste[c2]:
                break
            if c2 == 10:
                return False
    if len(cod) > 10 or len(cod) < 10:
        return False

    cod = list(map(int,cod))
    if sum(cod) == 0:
        return 14
    r = cod[0] + cod[1]
    lista2 = list()
    lista2.append(r)

    for c in range(2,10):
        r += cod[c]
        lista2.append(r)
    
    if sum(lista2) % 11 == 0:
        return True
    else:
        return False


def main():

    #isbn = sys.stdin.readline()
    while True:
        isbn = sys.stdin.readline()
        #isbn = open('C:/Users/Maycon Douglas/Documents/Computação/Segundo Bloco/Programação 1/in.txt','rt')
        if verifica_ISBN(isbn) == 14:
            break
        if verifica_ISBN(isbn):
            print(isbn.strip(),'está correto.')
        else:
            print(isbn.strip(),'está incorreto.')

if __name__ == '__main__':
    main()  