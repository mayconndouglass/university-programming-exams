# Aluno: Maycon Douglas Silva Soares
#
#Quarta Questão - Prova Prog1 - Avaliação 2
#
import sys

def odd_or_even(contador,rodadas):
    print('Teste',contador)
    j1 = sys.stdin.readline().strip()
    j2 = sys.stdin.readline().strip()
    for k in range(int(rodadas)):
        v = sys.stdin.readline().strip()
        v = list(map(int,v.split()))
        print (j1) if (v[0] + v[1]) % 2 == 0 else print (j2)
    print()

def main():
    c = 0
    while True:
        n = sys.stdin.readline().strip()
        if n == '0':
            break
        c +=1
        odd_or_even(c,n)

if __name__ == '__main__':
    main()