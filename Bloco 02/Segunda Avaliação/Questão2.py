# Aluno: Maycon Douglas Silva Soares
#
# Segunda Questão - Prova Prog1 - Avaliação 2
#
import sys

def turing(a):
    a = a.split('+')
    a.extend(a.pop(1).split('='))
    return 'V' if int(a[0][::-1]) + int(a[1][::-1]) == int(a[2][::-1]) else 'F'
    
def main():
    while True:
        #n = (input())
        n =sys.stdin.readline()
        if n == '0+0=0':
            print('V')
            break
        print(turing(n))
            

if __name__ == '__main__':
    main()