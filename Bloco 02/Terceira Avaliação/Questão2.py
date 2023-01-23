# Aluno: Maycon Douglas Silva Soares
#
# Questão 2 - PROG1 - AVAL3
#
import sys

def suaSorte(nome):
    nome = nome.upper().replace(' ','')
    t =(['A','J','S'],['B','K','T'],['C','L','U'],['D','M','V'],['E','N','W'],['F','O','X'],['G','P','Y'],['H','Q','Z'],['I','R'])
    
    sorte = 0
    for l in nome:
        for p in range(9):
            if l in t[p]:
                sorte += p + 1 

    while True:
        sorte = str(sorte)
        if len(sorte) > 1:
            sorte = list(map(int,sorte))
            sorte = sum(sorte)
        else:
            return sorte

def main():
    while True:
        n = sys.stdin.readline().strip()
        if n == "" or n == " " or n == '0' or n == 0:
            break
        print(suaSorte(n))

if __name__ == '__main__':
    main()
