# Aluno: Maycon Douglas Silva Soares
#
# Questão 1 - PROG1 - AVAL3
#
import sys

def merryChristmas():
    kids = list(map(int,sys.stdin.readline().split()))
    kids.sort()

    #número de presentes
    np = 1
    #total de presentes
    tp = 1
    c = 1
    nivel = kids[0] 
    while c < len(kids):
        if kids[c] != nivel:
            nivel = kids[c]
            np += 1
            tp += np
        else:
            tp += np
        c += 1
    return tp    

def main():
    while True:
        n = sys.stdin.readline()
        if n == "" or n == " " or n == '0' or n == 0:
            break
        print(merryChristmas())

if __name__ == '__main__':
    main()