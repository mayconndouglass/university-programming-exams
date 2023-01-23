# Aluno: Maycon Douglas Silva Soares
#
# Quinta Questão - Prova Prog1 - Avaliação 2
#
import sys
# np -> número de pessoas
# qd -> número de datas
def ver_date(np,qd):
    ld = list()
    for k in range(qd):
        d = sys.stdin.readline().strip()#input()
        d = d.split(' ')
        data = d.pop(0)
        if not '0' in d:
            ld.append(data)
            
    if len(ld) == 0:
        print('N/P')
    else:
        if len(ld) == 1:
            print(ld[0])
        else:
            p = 0
            menor = ld[len(ld)-1]
            menor = menor.split('/')
            menor = list(map(int,menor))
            
            for k in range(len(ld) - 1):
                
                p = ld[k].split('/')
                if int(p[2]) < menor[2]:
                    menor = ld[k]
                    menor = menor.split('/')
                    menor = list(map(int,menor))
                elif int(p[1]) < menor[1]:
                    menor = ld[k]
                    menor = menor.split('/')
                    menor = list(map(int,menor))
                elif int(p[0]) < menor[0]:
                    menor = ld[k]
                    menor = menor.split('/')
                    menor = list(map(int,menor))
            print(f'{menor[0]}/{menor[1]}/{menor[2]}')
            
def main():
    while True:
        n = sys.stdin.readline()#input()
        n = list(map(int,n.split()))
        if n[0] == n[1] == 0:
            break
        ver_date(n[0],n[1])

if __name__ == '__main__':
     main()