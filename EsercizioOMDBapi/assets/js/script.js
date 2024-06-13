let urlAPI = 'https://www.omdbapi.com/?apikey=';
let apikey = 'a17a78ae&';

getMovies('new', '', 1);

// Aggiungo un evento sul Btn Search nella navbar
let btnSearch = document.querySelector('form[role="search"]')
btnSearch.addEventListener('submit', searchMovie)

function getMovies(search, type, page) {

    fetch(urlAPI+apikey+'s='+search+'&type='+type+'&page='+page)
    .then(response => response.json())
    .then(data => {
        console.log(data)
        if(data.Error) {
            displayAlertError(data.Error)
        } else {
            displayCard(data);
            createPagination(search, type, data.totalResults)
        }
    } )
    .catch(error => console.error(error))
}

// Funzione per creare la paginazione dei risultati
function createPagination(search, type, totalResults) {
    console.log(search, type, totalResults);

    let pagination = document.querySelector('div[role="group"]');
    pagination.innerHTML = '';
    let numPage = Math.ceil(totalResults / 10);
    
    for(let i = 1; i <= numPage; i++) {
        
        let btnPage = document.createElement('button');
        btnPage.type = 'button';
        btnPage.className = "btn btn-sm btn-outline-secondary";
        btnPage.innerHTML = i
        btnPage.addEventListener('click',() => getMovies(search, type, i))
        pagination.appendChild(btnPage)
        if(i === 10) {
            break;
        }
    }
    if(numPage > 10) {
        let btnPage = document.createElement('button');
        btnPage.type = 'button';
        btnPage.className = "btn btn-sm btn-outline-secondary";
        btnPage.innerHTML = '>>'
        btnPage.addEventListener('click',() => getMovies(search, type, 11))
        pagination.appendChild(btnPage)
    }

}

// Funzione per la gestione di un eventuale errore nella ricerca
function displayAlertError(error) {
    let displaycard = document.querySelector('div#display-card');
    displaycard.innerHTML = '';
    let divError = document.querySelector('div.alert-danger');
    divError.classList.remove("d-none");
    divError.innerHTML = '<strong>'+ error +'</strong>';
    /* console.log(divError); */
}

// Funzione che mostra tutte le copertine dei film
function displayCard(data) {
    /* console.log(data.Search); */
    let displaycard = document.querySelector('div#display-card');
    displaycard.innerHTML = '';
    data.Search.forEach(element => {
        let col = document.createElement('div');
        col.className = "col-3";
        let div = document.createElement('div');
        div.className = "card my-3";
        let img = document.createElement('img');
        img.className = "img-thumbnail";
        img.src = element.Poster;
        img.alt = element.Title;

        div.appendChild(img);
        col.appendChild(div);
        col.addEventListener('click', () => {
            const myModalAlternative = new bootstrap.Modal('#exampleModal')
            myModalAlternative.show();
            console.log(myModalAlternative);
            console.log(element);
            let modal = document.querySelector('#exampleModal div.modal-body');
            modal.innerHTML = '<h3>'+ element.Title +'</h3>';
            modal.innerHTML += '<p>Anno: ' + element.Year + '</p>';
        } )
        displaycard.appendChild(col);
    });
    let divError = document.querySelector('div.alert-danger');
    divError.classList.add("d-none")

}

// Funzione per la ricerca dei film
function searchMovie(e) {
    e.preventDefault();
    /* console.log(e.target.type.value); */
    let type = e.target.type.value;
    let search = e.target.search.value;
    /* let search = document.querySelector('input[type="search"]').value; */
    /* alert('searchMovie: ' + search.value) */
    getMovies(search, type, 1);
}


/* https://www.omdbapi.com/?apikey=a17a78ae&
apikey=a17a78ae
s=batman
page=1
type=movie
y=1999 */