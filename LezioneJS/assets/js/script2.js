// Number | String | Boolean | Array | Object
let num = 25;
let txt = 'testo';
let bool = true; 

// Array o Vettori
let arr = [5, 63, 8, 99, 51]; // 0, 1, 2, 3, ...
let x = arr[1];
arr[2] = 10;
arr[5] = 3;
arr[7] = 31;

arr.push(12); // Inserisce un nuovo valore alla fine dell'array
arr.unshift(1); // Inserisce un nuovo valore all'inizio dell'array
arr.pop(); // Rimuove un elemento alla fine di un array
arr.shift(); // Rimuove un elemento all'inizio di un array

console.log(arr);
// Può essere utilizzato per 
// eliminare/sostituire/aggiungere 
// un elemento ad un indice specifico
arr.splice(4, 1, 55) 
console.log(arr);

console.log(arr.length);
console.log(x);

// Ciclo for utilizzato per iterare un array tramite l'indice
for(let i=0; i<arr.length; i++) {
    console.log("Il valore contenuto all'indice " + 
                i + " nell'array è: " + arr[i]);
}

// ForIN | FOROF
// ForIN utilizzato solo per iterare completamente un array
// mi restituisce in ogni iterazione l'indice dell'array
for (const key in arr) {
    console.log("Il valore contenuto all'indice " + 
                key + " nell'array è: " + arr[key]);
}

// ForOF utilizzato solo per iterare completamente un array
// mi restituisce in ogni iterazione il valore contenuto nell'array
for (const value of arr) {
    console.log("Il valore contenuto nell'array è: " + value);
}

// ESERCIZIO
// Chiedere ad un utente tramite un prompt 
// 10 numeri validi ed univoci. 
// Al termine stamparli in console 

let arrNum = [];

/* let n = prompt('Iserisci un numero');
let numVal = Number(n);
console.log(numVal);   */
// typeof restituisce il tipo di dato di una variabile
//console.log(typeof(numVal));
// NaN è un valore numerico che non è comparabile neanche con se stesso
// isNaN è una funzione che restituisce true se la variabile contiene un valore NaN
//console.log(isNaN(numVal));

while(false) {
    let num = prompt('Iserisci un numero');
    let numVal = Number(num); // numero | NaN
    if(!isNaN(numVal)) {
        /* 
            let n = numVal;
            for (const value of arrNum) {
                if(value === numVal) { n = null; }
            } 
            
            if(n !== null) { arrNum.push(numVal) }
        */
        
        if(!arrNum.includes(numVal)) { arrNum.push(numVal) }
    }
    if(arrNum.length === 1) { break; }
}

console.log(arrNum);

/* for(let i=0; i<arrNum.length; ) {
    let num = prompt('Iserisci un numero');
    arrNum.push(num)
    i++;
} */



// Object

/* let utente = { nome: "Mario", cognome: "Rossi", eta: 43 }
utente.nome = "Giuseppe";
console.log(utente.nome);
console.log(utente.cognome);
console.log(utente['eta']); */


// ESERCIZIO
// Chiedere ad un utente tramite un prompt 
// 5 oggetti di tipo utente che hanno le seguenti proprietà.
// Nome, Cognome, Eta, Email
// Salvare gli oggetti di tipo Utente in un array 
// Al termine stamparli in console 
// EXTRA: controllo sulla email (duplicata)

let arrUser = [];

while (arrUser.length < 0) {
    let nome = prompt('Inserisci il tuo nome');
    let cognome = prompt('Inserisci il tuo cognome');
    let eta = prompt('Inserisci la tua eta');
    let email = prompt('Inserisci la tua email');

    // Controllo se l'indirizzo email è già presente
    let n = email;
    for (const obj of arrUser) {
        if(obj.email === email) { n = null; }
    } 
    if(n !== null) { 
        let obj = {
            nome: nome, 
            cognome: cognome, 
            eta: eta, 
            email: email
        };
        arrUser.push(obj);
    }
}

console.log(arrUser);


// Function 
// Un blocco di istruzione che viene invocato da un utente tramite un azione

// Dichiarazione di funzione
function func() {
    // blocco di istruzioni da eseguire
    console.log("Sono un funzione!!!");
}

// Funzione espressione
let func2 = function() {
    // blocco di istruzioni da eseguire
    console.log("Sono un funzione!!!");
}

// Arrow function
let func3 = () => {
    // blocco di istruzioni da eseguire
    console.log("Sono un funzione!!!");
}

// Esecuzione di una funzione
func();
func2();
func3();

function sum(x, y) {
    let res = x + y;
    console.log('Il risultato è ' + res);
}

sum(25, 3);
sum(13, 11);

function div(x, y) {
    if( x === 0 || y === 0) {
        console.log('Non è possibile fare la divisione per 0');
    } else {
        let res = x / y;
        console.log('Il risultato della divisione è ' + res);
    } 
}

div(10,3);
div(10,0);


// Classi
// Una classe definisce tutte le caratteristiche e le funzionalità
// che avrà un determinato oggetto
// Una classe può definire proprietà e metodi
class User {
    /* name; lastname; email; age; */

    constructor(name, lastname, email, age) {
        this.name = name;
        this.lastname = lastname;
        this.email = email;
        this.age = age;
    }

    saluta() {
        console.log("Ciao sono " + this.name + ' ' + this.lastname);
    }
}

/* let u1 = new User();
u1.name = 'Mario';
u1.lastname = 'Rossi';
u1.email = 'm.rossi@example.com';
u1.age = 31; */

let u1 = new User('Mario', 'Rossi', 'm.rossi@example.com', 31);
let u2 = new User('Giuseppe', 'Verdi', 'g.verdi@example.com', 44);
let u3 = new User('Francesca', 'Neri', 'f.neri@example.com', 25);
let u4 = new User('Marcello', 'Viola', 'm.viola@example.com', 67);
u1.name = 'Antonio';
console.log(u1.name);

u1.saluta()
u2.saluta()
u3.saluta()

/* console.log(u1);
console.log(u2); */


/* let obj = {
    name: 'Mario',
    lastname: 'Rossi',
    email: 'm.rossi@example.com',
    age: 42
}

let obj2 = {
    name: 'Giuseppe',
    lastname: 'Verdi',
    email: 'g.verdi@example.com',
    age: 41
} */

let myArr = [];
myArr.length
myArr.push(u1,u2,u3,u4);
console.log(myArr);

/* console.log(myArr[0].name + ' ' + myArr[0].lastname);
console.log(myArr[1].name + ' ' + myArr[1].lastname);
console.log(myArr[2].name + ' ' + myArr[2].lastname); */

/* myArr[0].saluta()
myArr[1].saluta()
myArr[2].saluta() */

/* for(let i=0; i<myArr.length; i++ ) {
    myArr[i].saluta();
} */

/* for (const key in myArr) {
    myArr[key].saluta();
} */

/* for (const obj of myArr) {
    obj.saluta();
} */

myArr.forEach(u => u.saluta())

// Esercizio facile
// Creare un software per la registrazione di prodotti
// Ogni prodotto avrà le seguenti caratteristiche
// Nome, Marca, Categoria, Prezzo, Quantità
// Utilizzare: Classi, Array, Prompt, Confirm, 
// Stampare il contenuto dell'array in console tramite un foreach.
// Stampare il totale dei prodotti salvati, 
// Stampare il valore totale di tutti i prodotti

class Prodotti {
    constructor(nome, marca, categoria, prezzo, quantita) {
        this.nome = nome;
        this.marca = marca;
        this.categoria = categoria;
        this.prezzo = prezzo;
        this.quantita = quantita
    }
}

function creaProdotto() {
    let nome = prompt('Inserisci il nome del prodotto');
    let marca = prompt('Inserisci la marca');
    let categoria = prompt('Inserisci il nome della categoria');
    let prezzo = Number(prompt('Inserisci il prezzo'));
    let quantita = Number(prompt('Inserisci la quantità'));
    let prod = new Prodotti(nome, marca, categoria, prezzo, quantita);
    return prod;
}

let arrayProdotti = [];
let totalCount = 0;
let totalPrice = 0;

while(true) {
    let nuovo = confirm('Vuoi creare un prodotto?');
    if(!nuovo) {
        break;
    }
   let p = creaProdotto();
   arrayProdotti.push(p);
}

arrayProdotti.forEach(p => {
    totalCount = totalCount + p.quantita
    totalPrice = totalPrice + (p.prezzo * p.quantita);
    console.log(p)
})

console.log('******************************');
console.log('Numero totale prodotti: ' + totalCount);
console.log('Prezzo totale prodotti: ' + totalPrice);

// Esercizi per casa
// https://codegrind.it/esercizi/javascript