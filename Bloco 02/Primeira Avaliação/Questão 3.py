#
# Problema3 - Prova Prog1
#

import sys

def teste(lista,verbo):
    verbo = verbo.strip('\n')
    conc = verbo[-1::]
    i,i2 = 1,0
    vogais = ['a','e','i','o','u',]
    while i <= 4:
        for c in range(3):
            if conc == lista[c] and verbo[-(len(conc)+1)] not in vogais:
                if lista.index(conc) == 0:
                    tempo = 'presente'
                elif lista.index(conc) == 1:
                    tempo = 'passado'
                else:
                    tempo = 'futuro'
                #print(conc)
                #if conc[::]
                print(verbo,'- verbo',verbo.replace(conc,'en'),'\b,',tempo,end=',')
                return True
        i+= 1
        conc = verbo[-i::]
    return False

def l_nativos(verbo):
    
    p1 = ['o','ei','ai']
    p2 = ['os','es','ais']
    p3 = ['a','e','i']
    p4 = ['om','em','aem']
    p5 = ['ons','est','aist']
    p6 = ['am','im','aim']

    if teste(p1,verbo):
        print(' 1a pessoa')
    elif teste(p2,verbo):
        print(' 2a pessoa')
    elif teste(p3,verbo):
        print(' 3a pessoa')
    elif teste(p4,verbo):
        print(' 4a pessoa')
    elif teste(p5,verbo):
        print(' 5a pessoa')
    elif teste(p6,verbo):
        print(' 6a pessoa')
    else:
        print(verbo.strip('\n'),'- não é um tempo verbal')#erro, inclementar ainda

    

def main():
   while True:
    #v = input('')
    v = sys.stdin.readline()
    t = l_nativos(v) 
if __name__ == '__main__':
    main()