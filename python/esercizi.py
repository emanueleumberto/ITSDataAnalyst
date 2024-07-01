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
    if(len(listaNomi) == 5):
        break
print(listaNomi, ins)