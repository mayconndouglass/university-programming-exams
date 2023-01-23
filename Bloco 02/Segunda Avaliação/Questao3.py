# Aluno: Maycon Douglas Silva Soares
#
# Terceira Questão - Prova Prog1 - Avaliação 2
#
import sys

def ver_repet(n):
    n = n.split(' ')
    c = 0
    i,f = int(n[0]),int(n[1]) +1
    for s in range(i,f):
        s = str(s)
        if len(s) == 2 and s[0] != s[1]:
            c+=1
        elif  len(s) == 3 and s.count(s[0]) == 1 and s.count(s[1]) == 1:
            c+=1
        elif len(s) == 4 and s.count(s[0]) == 1 and s.count(s[1]) == 1 and s.count(s[2]) == 1:
            c+=1
        elif len(s) == 4 and s.count(s[0]) == 1 and s.count(s[1]) == 1 and s.count(s[2]) == 1 and s.count(s[3]) == 1:
            c+=1
    return c
    
def main():
    while True:
        n = sys.stdin.readline()#input()
        print(ver_repet(n))


if __name__ == '__main__':
    main()