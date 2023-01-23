# Aluno: Maycon Douglas Silva Soares
#
# Questão 5 - PROG1 - AVAL3
#
import sys

def quantrigo(casas):
    casas = int(casas)
    n = 1
    for k in range(casas):
        n+=n
    return (n // 12) // 1000

def main():
    n = sys.stdin.readline().strip()
    n = int(n)
    c = 1
    while c <= n:
        m = sys.stdin.readline()
        print(quantrigo(m),'kg')
        c+=1

if __name__ == '__main__':
    main()