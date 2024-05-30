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

// Switch/Case
/* 
    switch (key) {
        case value:
            // Blocco di istruzioni
            break;
        case value:
            // Blocco di istruzioni
            break;
        case value:
            // Blocco di istruzioni
            break;
        case value:
            // Blocco di istruzioni
            break;
        default:
            // Blocco di istruzioni
            break;
    } 
*/


// Esercizio
// Chiedi tramite un prompt un valore numerico da 1-7
// Stampa in console il giorno della settimana 
// Es. 1 = Lunedi, 2 = Martedi, 3 = Mercoledi ....
// Se l'utente inserisce un valore diverso da 1-7 
// stampare un messaggio di errore

// Soluzione con if/else
let giorno = Number(prompt('Inserisci un valore numerico da 1 a 7'));
/* giorno = Number(giorno); */
if(giorno === 1) { console.log('Lunedi');}
else if(giorno === 2) { console.log('Martedi');}
else if(giorno === 3) { console.log('Mercoledi');}
else if(giorno === 4) { console.log('Giovedi');}
else if(giorno === 5) { console.log('Venerdi');}
else if(giorno === 6) { console.log('Sabato');}
else if(giorno === 7) { console.log('Domenica');}
else { console.log('Hai inserito un valore errato') }

// Soluzione con swich/case
switch (giorno) {
    case 1: { console.log('Lunedi'); break; }
    case 2: { console.log('Martedi'); break; }
    case 3: { console.log('Mercoledi'); break; }
    case 4: { console.log('Giovedi'); break; }
    case 5: { console.log('Venerdi'); break; }
    case 6: { console.log('Sabato'); break; }
    case 7: { console.log('Domenica'); break; }
    default:
        console.log('Hai inserito un valore errato')
        break;
}

let mese = Number(prompt('Inserisici un mese da 1 a 12'))
switch (mese) {
    case 12: 
    case 1: 
    case 2: { console.log('Inverno'); break; }
    case 3:
    case 4: 
    case 5: { console.log('Primavera'); break; }
    case 6: 
    case 7: 
    case 8: { console.log('Estate'); break; }
    case 9: 
    case 10: 
    case 11: { console.log('Autunno'); break; }
    default:
        console.log('Hai inserito un valore errato')
        break;
}

// Cicli o Strutture iterative
// FOR | WHILE | DO WHILE
// for(dichiarazione; condizione; incremento) { blocco di istruzioni }
console.log('Ciclo FOR');
for(let i=0; i<5; i++) {
    // Blocco di istruzioni
    console.log(i);
}

console.log('Ciclo WHILE');
let i = 0;
while(true) {
    // Blocco di istruzioni
    console.log(i);
    i++;
    let c = confirm('Vuoi Continiare?')
    if(c === false) { break; }
}

console.log('Ciclo DO WHILE');
let h = 10;
do {
    // Blocco di istruzioni
    console.log(h);
    h++;
} while(h<5)



// Esercizio
// Chiedi con un ciclo n volte tramite prompt 
// un nome,un cognome e un età ad un utente
// Stampa in console i valori richiesti 
// in questa forma "Ciao Mario Rossi anni 22" 
// ma solo se l'età inserita è una età valida
// e che sia maggiore di 18 anni altrimenti
// stampare un messaggio di errore

while(true) {
    let nome = prompt('Iserisci il tuo nome')
    let cognome = prompt('Iserisci il tuo cognome')
    let eta = Number(prompt('Iserisci la tua età'))
    if(eta > 0 && eta < 120) {
        if(eta >= 18){
            console.log("Ciao " + nome + " " + cognome + " anni " + eta);
        } else {
            console.log("Ciao " + nome + " " + cognome);
        }
    } else {
        console.log("Errore!!! valori non corretti");
    }
    let continua = confirm('Vuoi continuare?')
    if(continua === false) { break; }
}
console.log("Fine");

