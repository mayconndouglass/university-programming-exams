# Aluno: Maycon Douglas Silva Soares
#
# Questão 4 - PROG1 - AVAL3
#
import sys
import math

def hexaVem(minutos):
    minutos = int(minutos)
    gdb = int(math.floor(minutos / 90)) #gols do Brasil
    gda = int(math.ceil(minutos / 12.85714285714286)) #gols da Alemanha
    print('Brasil %i x Alemanha %i'%(gdb,gda))

def main():
    while True:
        n = sys.stdin.readline().strip()
        if n == "" or n == " " or n == '0' or n == 0:
            break
        hexaVem(n)

if __name__ == '__main__':
    main()