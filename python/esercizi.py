# Chiediamo un nome, cognome ed età da terminale 
# e verifichiamo se l'utente è maggiorenne o minorenne
# verifichiamo inoltre se il valore inserito è corretto
# stampare nel terminale 'nome cognome anni è maggiorenne/minorenne 
# oppure un messaggio di errore'

firstName = 'Mario' # input('Inserisci un nome: ')
lastName = 'Rossi' # input('Iserisci il cognome: ')
age = 32 # int(input('Inserisci la tua età: '))
txt = '{} {} anni {} è {}'

if age >= 18 and age < 120:
    # print(firstName + ' ' + lastName + ' ' + str(age) + ' è maggiorenne')
    print(txt.format(firstName, lastName, age, 'maggiorenne'))
elif age > 0 and age < 18:
    # print(firstName + ' ' + lastName + ' ' + str(age)+ ' è minorenne')
    print(txt.format(firstName, lastName, age, 'minorenne'))
else:
    print('Errore!!!')
    

# Scriviamo un programma che chiede in input 3 nomi. 
# Dopo stampare le prime 3 cifre del nome seguito da ...
listaNomi = []
while(len(listaNomi) < 0):
    listaNomi.append(input('Inserisci un nome: '))
else :
    # print(listaNomi)
    for ele in listaNomi:
        print(ele[0:3] + '...')
        
# Utilizzando una lista, chiedere da input 5 nomi univoci 
# (senza duplicati). Dopo stampare il numero di inserimenti 
# fatti e la lista di nomi
listaNomi = []
ins = 0
while(True):
    nome = input('Inserisci un nome: ')
    ins += 1
    if nome not in listaNomi:
        listaNomi.append(nome)
    if(len(listaNomi) == 1):
        break
print(listaNomi, ins)

# Chiedere all'utente tramite input il numero di registrazioni 
# da effettuare,
# tramite una funzione registrare n utenti con questa forma
# {'firstname': '', 'lastname': '', 'age': '', 'city': ''}
# inserire gli utenti in una lista e ritornare il tutto
# Tramite una seconda funzione, passare la lista di utenti e 
# stampare nel terminale il contenuto

def registrazione():
    numRegistrazioni = int(input('Inserisci il numero di registrazioni che vuoi fare: '))
    userList = []
    while len(userList) < numRegistrazioni:
        user = {'firstname': '', 'lastname': '', 'age': '', 'city': ''}
        user['firstname'] = input('Inserisci nome: ')
        user['lastname'] = input('Inserisci cognome: ')
        user['age'] = input('Inserisci età: ')
        user['city'] = input('Inserisci città: ')
        userList.append(user)
        # if len(userList) == numRegistrazioni: break
    return userList

def stampa(l):
    for ele in l:
        print('Ciao ' + ele['firstname'] + ' ' 
              + ele['lastname'] + ' anni ' + ele['age'] 
              + ' città ' + ele['city'])

lista = registrazione()
stampa(lista)