/* https://www.omdbapi.com/?apikey=a17a78ae&
apikey=a17a78ae
s=batman
page=1
type=movie
y=1999 */



fetch('https://www.omdbapi.com/?s=batman&page=1&type=movie&apikey=a17a78ae')
        .then(response => response.json())
        .then(json => printJson(json.Search))


function printJson(arr) {
    let div = document.querySelector('div.omdb');
    arr.forEach(ele => {
        let img = document.createElement('img');
        img.src = ele.Poster;
        img.style.width = '250px';
        img.style.margin = '10px';
        div.appendChild(img);
    })
}



// Ogg capace di effettuare richieste ad un server
let xhr = new XMLHttpRequest();
// Metodo Open mi permette di definire il tipo di richiesta
// e l'URI della richiesta
xhr.open('GET', 'https://jsonplaceholder.typicode.com/users');
// Invio la richiesta
xhr.send();
// Esegue una funzione ad ogni campbiamento di stato
xhr.onreadystatechange = function () {
    // https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/readyState
    // https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
    if(xhr.readyState === 4 && xhr.status === 200) {
        // JSON.parse -> trasforma un JSON in un Oggetto
        // JSON.stringhify -> trasforma un Oggeto in JSON
        let arrObj = JSON.parse(xhr.responseText);
        console.log(arrObj);
    }
}
// Gestione dell'errore nella chiamata Ajax
xhr.onerror = function (error) {
    console.log(error);
}


// Soluzione 2 per chiamata ajax
// CRUD -> CREATE READ UPDATE DELETE
// GET -> Lettura
// POST -> Scrittura
// PUT -> Modifica
// PATCH -> Modifica
// DELETE -> Elimina

// GET
fetch('https://jsonplaceholder.typicode.com/users')
    .then(repsonse => repsonse.json())
    .then(json => printUser(json))
    .catch(error => console.error(error))

function printUser(users) {
    let ul = document.createElement('ul');
    users.forEach(element => {
        let li = document.createElement('li');
        li.innerText = element.name;
        ul.appendChild(li);
    });
    document.querySelector('div.container')
            .appendChild(ul);
}

//POST
let obj = {
    name: "Mario Rossi",
    username: "Mariolino",
    email: "m.rossi@example.com",
    address: {
        street: "Via Emo",
        suite: "Apt. 15",
        city: "Roma",
        zipcode: "12345",
        geo: {
            lat: "-37.3159",
            lng: "81.1496"
        }
    },
    phone: "+39 123456789",
    website: "its-agnesi.com",
    company: {
        name: "ITS Agnesi",
        catchPhrase: "Multi-layered client-server neural-net",
        bs: "harness real-time e-markets"
    }
}

let config = {
    method: 'POST',
    body: JSON.stringify(obj),
    headers: {
        'Content-type': 'application/json; charset=UTF-8',
      }
}

fetch('https://jsonplaceholder.typicode.com/users', config)  
    .then(repsonse => repsonse.json())
    .then(json => console.log(json))
    .catch(error => console.error(error))



//PUT
let objEdit = {
    id: 2, // in POST non c'è
    name: "Mario Rossi Mod",
    username: "Mariolino Mod",
    email: "m.rossi@example.com",
    address: {
        street: "Via Emo",
        suite: "Apt. 15",
        city: "Roma",
        zipcode: "12345",
        geo: {
            lat: "-37.3159",
            lng: "81.1496"
        }
    },
    phone: "+39 123456789",
    website: "its-agnesi.com",
    company: {
        name: "ITS Agnesi",
        catchPhrase: "Multi-layered client-server neural-net",
        bs: "harness real-time e-markets"
    }
}

let configEdit = {
    method: 'PUT', // Nel POST il method è POST
    body: JSON.stringify(objEdit),
    headers: {
        'Content-type': 'application/json; charset=UTF-8',
    }
}

fetch('https://jsonplaceholder.typicode.com/users/2', configEdit)  
    .then(repsonse => repsonse.json())
    .then(json => console.log(json))
    .catch(error => console.error(error))

//PATCH
let objEditPatch = {
    email: "m.rossi@example.com",
    website: "its-agnesi.com",
}

let configEditPatch = {
    method: 'PATCH', // Nel POST il method è POST
    body: JSON.stringify(objEditPatch),
    headers: {
        'Content-type': 'application/json; charset=UTF-8',
    }
}

fetch('https://jsonplaceholder.typicode.com/users/2', configEditPatch)  
    .then(repsonse => repsonse.json())
    .then(json => console.log(json))
    .catch(error => console.error(error))

//DELETE

fetch('https://jsonplaceholder.typicode.com/users/2', {method: 'DELETE'})  
    .then(repsonse => repsonse.json())
    .then(json => console.log(json))
    .catch(error => console.error(error))






