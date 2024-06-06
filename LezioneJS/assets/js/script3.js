// BOM -> Browser Object Model
// DOM -> Document Object Model

console.log(window);
console.log(document);

/* let html = document.children[0];
html.style.backgroundColor = 'red';

let body = html.children[1];
body.style.color = 'green';

let container = body.children[0];
let h1 = container.children[0];
h1.style.textDecoration = 'underline';

let p = document.children[0].children[1].children[0].children[1];
p.style.fontWeight = 'bold';

p.innerText = 'Contenuto modificato';
console.dir(p); */

/* let h1 = document.children[0].children[1].children[0].children[0]; */
/* let h1 = document.getElementById('titolo');
console.dir(h1);
h1.innerText = 'Titolo modificato';
h1.style.color = 'red';

let link = document.getElementsByClassName('link');
console.dir(link);
link[0].href = 'http://www.google.com';
link[0].innerText = 'Google';

link[0].style.color = 'red';
link[1].style.color = 'red';

for (const ele of link) {
    ele.style.color = 'red';
}

let p = document.getElementsByTagName('p');
console.dir(p);
p[0].style.display = 'none'


let eleID = document.querySelector('#titolo');
let eleClass = document.querySelectorAll('.link');
let ele = document.querySelector('div.container > p');
let coll = document.querySelectorAll('div.container > p')
console.log(ele);
console.log(coll); */

// Selettori JS

// document.getElementById(ID) -> Element | NULL
// document.getElementsByClassName(CLASS) -> HTMLCollection
// document.getElementsByTagName(TAG) -> HTMLCollection

// document.querySelector(SELECTOR) -> Element | NULL
// document.querySelectorAll(SELECTOR) -> NodeList


/* let div = document.createElement('div');
div.className = 'abc';
div.innerHTML = '<p>Sono un nuovo paragrafo</p>';
console.log(div);

let body = document.querySelector('body');
body.appendChild(div); */

// Esercizio difficile
// Partendo da una pagina HTML vuota con solo un nodo 
// <div class="container"></div> 
// Creare un array di oggetti di tipo Utente con le seguenti 
// proprietà: name, lastname, city
// Creare ed appendere al nodo radice i seguenti elementi
// Titolo H1 con un testo
// Paragrafo P con una breve descrizione della pagina
// Creare una Lista non ordinata (UL) in cui stampare 
// tutti gli oggetti (minimo 3) creati nell'array
// Alla fine della lista creare un paragrafo con in totale 
// degli oggi contentui nell'array

let obj1 = {name: 'Mario', lastname: 'Rossi', city: 'Roma'};
let obj2 = {name: 'Giuseppe', lastname: 'Verdi', city: 'Milano'};
let obj3 = {name: 'Francesca', lastname: 'Neri', city: 'Napoli'};
let obj4 = {name: 'Antonio', lastname: 'Bianchi', city: 'Torino'};
let arr = [obj1, obj2, obj3, obj4];

let div = document.querySelector('div.container')

let h1 = document.createElement('h1');
h1.innerText = 'Lista Utenti';

let p = document.createElement('p');
p.innerText = 'Lista utenti generata dinamicamente con Javascript';

let ul = document.createElement('ul');
arr.forEach(ele => {
    /* console.log(ele); */
    let li = document.createElement('li');
    li.innerHTML =    ele.name + ' ' 
                    + ele.lastname + '<strong> (' 
                    + ele.city + ')</strong>';
    ul.appendChild(li);
})

div.appendChild(h1);
div.appendChild(p);
div.appendChild(ul);
