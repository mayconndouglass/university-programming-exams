//Alunos:
//Maycon Douglas Silva Soares
//Luis Felipe Saraiva

// A - Implemente uma classe Equation que represente uma equação linear
class Equation{
  List<int> coeficientes;//O último número sempre será o termo independente(que fica depois do igual)  
  
  Equation(this.coeficientes);

  // B - Gere uma string de representação adequada para cada instância de Equation por meio do método toString()
  @override
  String toString(){
    String result = '';
    for(var i = 0; i < coeficientes.length; i++){
      if(i == coeficientes.length - 1){
        result += ' = ${coeficientes[i]}';
        break;
      }  
      result += '${coeficientes[i]}x';
      result += i != coeficientes.length - 2? ' + ' : '';
    }
    return result;
  }
  // C - Implemente suporte para a sobrecarga das quatro operações básicas (adição, subtração, mutiplicação e
  //divisão) sobre uma instância de Equation de forma que a relação da equação não seja alterada.

  //Multiplicacao
  String operator *(int numero){
    List<int> novaEq = [];
    for(var i = 0; i < coeficientes.length;i ++){
      novaEq.add(numero * coeficientes[i]);
    }
    
    String result = '';
    for(var i = 0; i < novaEq.length; i++){
      if(i == novaEq.length - 1){
        result += ' = ${novaEq[i]}';
        break;
      }  
      result += '${novaEq[i]}x';
      result += i != novaEq.length - 2? ' + ' : '';
    }
    return result;
  }
  //Adicao
  String operator +(int numero){
    List<int> novaEq = [];
    for(var i = 0; i < coeficientes.length;i ++){
      novaEq.add(numero + coeficientes[i]);
    }
    
    String result = '';
    for(var i = 0; i < novaEq.length; i++){
      if(i == novaEq.length - 1){
        result += ' = ${novaEq[i]}';
        break;
      }  
      result += '${novaEq[i]}x';
      result += i != novaEq.length - 2? ' + ' : '';
    }
    return result;
  }
  //Subtracao
  String operator -(int numero){
    List<int> novaEq = [];
    for(var i = 0; i < coeficientes.length;i ++){
      novaEq.add(coeficientes[i] - numero);
    }
    
    String result = '';
    for(var i = 0; i < novaEq.length; i++){
      if(i == novaEq.length - 1){
        result += ' = ${novaEq[i]}';
        break;
      }  
      result += '${novaEq[i]}x';
      result += i != novaEq.length - 2? ' + ' : '';
    }
    return result;
  }
  
  String operator /(int numero){
    List<int> novaEq = [];
    for(var i = 0; i < coeficientes.length;i ++){
      novaEq.add(coeficientes[i] ~/ numero);
    }
    
    String result = '';
    for(var i = 0; i < novaEq.length; i++){
      if(i == novaEq.length - 1){
        result += ' = ${novaEq[i]}';
        break;
      }  
      result += '${novaEq[i]}x';
      result += i != novaEq.length - 2? ' + ' : '';
    }
    return result;
  }
}

// D -Elabore uma classe LinearSystem que represente um sistema de equações lineares
class LinearSystem{
  List<Equation> equacoes;
  
  LinearSystem(this.equacoes);
  //Gere uma string de representação para instâncias de LinearSystem.
  @override
  String toString(){
    String result = '';
    for(var i = 0;i < equacoes.length; i++){
     result += '|  ${equacoes[i]}\t|\n';  
    }
    
    return result;
  }
}

void main() {
  //Testes
  //Unica maneira que pensei para passar os coeficientes foi usando listas
  List<int> coe1 = [2,3,4,5,6];
  List<int> coe2 = [7,8,9,10,11];
   
  
  Equation e1 = Equation(coe1);
  Equation e2 = Equation(coe2);
  
   
  List<Equation> sl= [e1,e2];
  LinearSystem ls1 = LinearSystem(sl);
  
  print(e1);
  print('-----------------------------------------------');
  
  print('Multiplicação: ${e1 * 2}');
  print('Soma: ${e1 + 2}');
  print('Subtração: ${e1 - 2}');
  print('Divisão: ${e1 / 2}');
  
  print('-----------------------------------------------');
  print(ls1);
}
