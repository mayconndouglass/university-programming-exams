//Alunos:
//        Maycon Douglas Silva Soares
//        Luis Felipe Saraiva

class Pg2{
  List<int> termos;
  
  Pg2(this.termos);
  
  int encontraRaiz(){
    return termos[1] ~/ termos[0];
  }
  //Possua um método que retorne uma string de representação para uma dada instância da classe
  @override
  String toString() {
    print('entrou');
    return ' Primeiro Termo: ${termos[0]}\n Raiz: ${encontraRaiz()}\n Representação: (${termos})';
  }
  
  //Implemente um método que gere o n-ésimo termo da PG;
  int geraTermo(int t){
    int NTermo = termos[0];
    int raiz = encontraRaiz();
    for (var i = 2; i <= t; i++) {
      NTermo *= raiz;
    }
    return NTermo;
  }
  
  //Possua um método que calcule a soma dos n primeiros termos da PG.
  int calculaTermos(int Qtermos) {
    if(Qtermos > termos.length){
      return -1;
    }
    
    int somaTermos = termos[0];
    int NTermo = termos[0];
    int raiz = encontraRaiz();

    for (var i = 2; i <= Qtermos; i++) {
      NTermo *= raiz;
      somaTermos += NTermo;
    }
    return somaTermos;
  }
  
}

//Exemplo 2


class Pg {
  int _q; //razao da pg
  int _primeiroTermo; //primeiro termo da pg

  Pg(this._q, this._primeiroTermo);

  //Possua um método que retorne uma string de representação para uma dada instância da classe
  @override
  String toString() {
    return ' Primeiro Termo: ${_primeiroTermo}\n Raiz: ${_q}\n Representação: (${_primeiroTermo},${_q})';
  }

  //Implemente um método que gere o n-ésimo termo da PG;
  int geraTermo(int termo) {
    int NTermo = _primeiroTermo;
    for (var i = 2; i <= termo; i++) {
      NTermo *= _q;
    }
    return NTermo;
  }

  //Possua um método que calcule a soma dos n primeiros termos da PG.
  int calculaTermos(int Qtermos) {
    int somaTermos = _primeiroTermo;
    int NTermo = _primeiroTermo;
    for (var i = 2; i <= Qtermos; i++) {
      NTermo *= _q;
      somaTermos += NTermo;
    }
    return somaTermos;
  }
}

void main() {
  //Testes Pg2
  List<int> pg = [2,6,18,54,162];
  Pg2 testePg2 = Pg2(pg);
    
  print('${testePg2.geraTermo(4)}');//Encontrando o quarto termo da pg
  print('${testePg2.calculaTermos(5)}');//Somando os termos de N(nesse caso 5) da Pg
  print(testePg2);
  
  print('------------------------------------');
  print('------------------------------------');
  //Testes Pg
  Pg teste = Pg(3, 2);
  
  
  print('${teste.geraTermo(1)}');
  print('${teste.calculaTermos(5)}');
  print(teste);
  
}
