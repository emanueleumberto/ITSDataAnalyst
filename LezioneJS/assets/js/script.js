// Variabili
// let nomeVariabile = valore
// const NOMECOSTANTE = valore


// Number | String | Boolean | Object | Array | undefined | null | function
let num = 25;
let txt = 'testo';
let bool = true; 


// Funzioni predefinite di JS
// Stampa nella console del browser 
// il valore contenuto nelle parentesi
console.log('Ciao a tutti');
console.log(txt);

/* alert('Ciao a tutti');
alert(txt); */

let scelta = confirm('Vuoi continuare?')
console.log(scelta);

let nome = prompt('Inserisci il tuo nome')
console.log("Ciao " + nome);


// Operatori
// Operatori di assegnamento =
// Operatori aritmentici + | - | * | / | %
// Operatori aritmentici di assegnamento += | -= | *= | /= | %=
// Operatori unari di incremento o decremento ++ | --
// Operatori relazionali > | < | >= | <=
// Operatori di uguaglianza == | === | != | !==
// Operatori logici AND && | OR || | NOT !

let x = 5;
// x = x + 1;
// x += 1;
x++;
console.log(x);

let num1 = 5;
let num2 = '5';
let result1 = num1 == num2;
let result2 = num1 === num2;
console.log('num1 == num2 ' + result1);
console.log('num1 === num2 '+ result2);

// Operatori logici
let x1 = 5;
let x2 = 10;
let x3 = 15;

let rf = x1 < x2 && x2 > x3;
let rv = x1 < x2 || x2 > x3;
console.log(rf);
console.log(rv);


/* TRUE && TRUE -> TRUE
TRUE && FALSE -> FALSE
FALSE && TRUE -> FALSE
FALSE && FALSE -> FALSE

TRUE || TRUE -> TRUE
TRUE || FALSE -> TRUE
FALSE || TRUE -> TRUE
FALSE || FALSE -> FALSE

!TRUE -> FALSE
!FALSE -> TRUE */

// Strutture condizionali
// if(condizione) | if(condizione) else
// if(condizione) else if(condizione) else

let a = 60;
let b = 50;
let c = 75;
let d = 100;

if(a < b) {
    // Blocco di istruzioni
    console.log('A è minore di B');
} else if(a === b) {
    console.log('A è uguale a B');
} else {
    console.log('A è maggiore di B');
}


// Esercizio
// Chiedi tramite un prompt un valore numerico da 1-7
// Stampa in console il giorno della settimana 
// Es. 1 = Lunedi, 2 = Martedi, 3 = Mercoledi ....
// Se l'utente inserisce un valore diverso da 1-7 
// stampare un messaggio di errore