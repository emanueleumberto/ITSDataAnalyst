// Events JS

function miaFunc() {
    console.log('Click sulla mia func!!');
}

let div = document.querySelector('.events');
let btn2 = div.children[1]

/* btn2.onclick = miaFunc; */
btn2.addEventListener('click', miaFunc);

let btn = document.querySelector('.formjs button');
btn.addEventListener('click', addForm)

function addForm() {
    // Seleziono i nodi da leggere
    let input = document.querySelectorAll('.formjs input')
    // leggo il valore del primo nodo input
    let fullname = input[0].value
    // leggo il valore del secondo nodo input
    let email = input[1].value
    
    // Utilizzo i dati letti nel form
    console.dir(fullname);
    console.dir(email);
    
    // Cancello i valori nel form
    input[0].value = ''
    input[1].value = ''
}

