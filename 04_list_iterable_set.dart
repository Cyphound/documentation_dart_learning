void main(){

  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10]; // List
  
  print('List original $numbers'); // List original [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10]
  print('Length ${numbers.length}'); // Length 13
  print('Index 0: ${numbers[0]}');  // Index 0: 1
  print('First: ${numbers.first}');  // First: 1
  print('Last: ${numbers.last}');   // Last: 10
  print('Reversed: ${numbers.reversed}'); // al aplicar reversed la lista quedara como iterable a parte de alreves
  
  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers'); 
  print('Iterable: ${reversedNumbers.toList()}'); // Transforma el iterable a una lista
  print('Iterable: ${reversedNumbers.toSet()}'); // Transforma el iterable a un set
  
  // Esta funcion es para poder filtrar los datos de una lista en este caso solo los numeros mayores a 5
  final numbersGreatherThan5 = numbers.where( (int num) {
    return num > 5; // true
  });
  
  print('>5 iterable: $numbersGreatherThan5'); // Los devuelve como iterable
  print('>5 set: ${numbersGreatherThan5.toSet()}'); // El set no permite valores repetidos
}