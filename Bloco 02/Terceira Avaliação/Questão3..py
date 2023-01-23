# Aluno: Maycon Douglas Silva Soares
#
# Questão 3 - PROG1 - AVAL3
#
import sys

def removeMaior(bigList):
    maior = 0
    mr = 0 #maior repetição
    for l in range(len(bigList)):
        if bigList.count(bigList[l]) > mr:
            mr = bigList.count(bigList[l])
            maior = bigList[l]
    for k in range(mr):
        bigList.remove(maior)
    return bigList

def primeiroPerdedor(n):
    bigList = list()
    for k in range(n):
        n = list(map(int,sys.stdin.readline().split()))
        bigList.extend(n)
    
    removeMaior(bigList)
    segundoMr = 0
    lsm = list()
    for k in bigList:
        if bigList.count(k) > segundoMr and len(lsm) == 0:
            segundoMr = bigList.count(k)
            lsm.append(k)
        elif bigList.count(k) > segundoMr and len(lsm) > 0:
            lsm = list()
            lsm.append(k)
            segundoMr = bigList.count(k)
        elif bigList.count(k) == segundoMr:
            lsm.append(k)
    segundoMaior = set(lsm)
    segundoMaior = list(segundoMaior)
    segundoMaior.sort()
    #SAÍDA
    for n in range(len(segundoMaior)):
        if n == len(segundoMaior) - 1:
            print(segundoMaior[n])
        else:
            print(segundoMaior[n],' ',end='')

def main():
    while True:
        n = sys.stdin.readline()
        n,m = map(int,n.split())
        if n == m == 0 or n == m == '0' or n == m == ' ' or n == m == 00:
            break
        
        primeiroPerdedor(n)
        

if __name__ == '__main__':
    main()