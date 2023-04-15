void main() { // void main siempre es necesario para que el programa funcione
  
  // var myName = 'Bayron'; El mismo tipo de dato que se le asigna
  // String myName = 'Bayron'; String
  // late final myName; 

  const myName = 'Bayron'; // constante, no se puede cambiar el valor de la variable
  
  // myName = 'Mundo'; se puede cambiar el valor de la variable
  
  print('Hola $myName'); // Hola Bayron
  print('Hola ${ myName.toUpperCase() }'); // De esta manera se puede usar funciones y variables que se concatenan
  print('Hola ${ 1 + 1 }'); // Hola 2
   
}