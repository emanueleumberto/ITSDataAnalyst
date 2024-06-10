let listaUtenti = [];

let btnAdd = document.querySelector('#formAdd button');
btnAdd.addEventListener('click', addUser);

class User {
    constructor(name, lastname, city, email) {
        this.name = name;
        this.lastname = lastname;
        this.city = city;
        this.email = email;
    }
}
function addUser() {
    let name = document.querySelector('input[name="name"]');
    let lastname = document.querySelector('input[name="lastname"]');
    let city = document.querySelector('input[name="city"]');
    let email = document.querySelector('input[name="email"]');
    let obj = new User(name.value, lastname.value, city.value, email.value)
    listaUtenti.push(obj);
    name.value = '';
    lastname.value = '';
    city.value = '';
    email.value = '';

    printTable();
}

function removeUser(index) {
    listaUtenti.splice(index, 1);
    printTable();
}

function printTable() {
    let table = document.querySelector('#tableUsers table tbody');
    table.innerHTML = '';
    listaUtenti.forEach((u,i) => {
        let tr = document.createElement('tr');
        tr.innerHTML = '<th scope="row">'+ (i+1) +'</th>';
        tr.innerHTML += '<td>'+ u.name +'</td>';
        tr.innerHTML += '<td>'+ u.lastname +'</td>';
        tr.innerHTML += '<td>'+ u.city +'</td>';
        tr.innerHTML += '<td>'+ u.email +'</td>';
        tr.innerHTML += '<td>' + 
                        '<button type="button" onclick="removeUser('+i+')" ' + 
                        'class="btn btn-sm btn-outline-danger">' +
                        '<i class="bi bi-trash3"></i>' +
                        '</button></td>';
                        table.appendChild(tr);
    })
}