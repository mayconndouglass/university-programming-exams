#
# Problema4 - Prova Prog1
#
import sys

def teste_p(lista,contador):
    sl = 2
    line = 1
    for c in range(1,contador):
        if c % 2 != 0:
            for c2 in range(sl):
                if lista[line] % 2 == 0:
                    return False
                    
                line+=1
        if c % 2 == 0:
            for c3 in range(sl):
                if lista[line] % 2 != 0:
                    return False
                line+=1

        sl +=1
    return True    

def teste_i(lista,contador):
    sl = 2
    line = 1
    for c in range(1,contador):
        if c % 2 != 0:
            for c2 in range(sl):
                if lista[line] % 2 != 0:
                    return False
                    
                line+=1
        if c % 2 == 0:
            for c3 in range(sl):
                if lista[line] % 2 == 0:
                    return False
                line+=1

        sl +=1
    return True

def m_alternada(n,seq):
    seq = list(map(int,seq.split()))
    n = int(n)
    t = n
    i = 1
    c = 0
    while t > 0:
        t-= i
        i+=1
        c += 1
    
    if t == 0:
        cansei = seq[0]
        if cansei % 2 == 0:
            if teste_p(seq,c):
                return c
            else:
                return 'Nao'
        else:
            if teste_i(seq,c):
                return c
            else:
                return 'Nao'

    else:
        return 'NAO'


    

def main():
    while True:
        n = sys.stdin.readline()
        seq = sys.stdin.readline()
        ft = sys.stdin.readline()
        print(m_alternada(n,seq))
        print(ft,end='')

if __name__ == '__main__':
    main()