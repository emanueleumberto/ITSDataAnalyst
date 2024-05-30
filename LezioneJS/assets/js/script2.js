// Number | String | Boolean | Array |
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

while(true) {
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

let utente = { nome: "Mario", cognome: "Rossi", eta: 43 }
utente.nome = "Giuseppe";
console.log(utente.nome);
console.log(utente.cognome);
console.log(utente['eta']);


// ESERCIZIO
// Chiedere ad un utente tramite un prompt 
// 5 utenti che hanno le seguenti proprietà.
// Nome, Cognome, Eta, Email
// Salvare gli oggetti di tipo Utente in un array 
// Al termine stamparli in console 
// EXTRA: controllo sulla email (duplicata)

let arrUser = [];

while (arrUser.length < 3) {
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


// Esercizi per casa
// https://codegrind.it/esercizi/javascript