#
# Problema 2 - Prova Prog1
#
import sys

def fatoriall(n):
    r = 1
    for c in range(1,n+1):
        r *= c
    return r


def metodo_curioso(num):
    num = num.strip('\n')
    num = list(map(int,num))
    if sum(num) == 0:
        return -1
    i = len(num)
    i2 = 0
    umc = 0
    while i >= 1:
        umc += num[i2] * fatoriall(i)
        i -= 1
        i2+=1 
    return umc

def main():
    while True:
        #umc = input('Informe um número: ')
        umc = sys.stdin.readline()
        if metodo_curioso(umc) == -1:
            break
        print(metodo_curioso(umc))

if __name__ == '__main__':
    main()