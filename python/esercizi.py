# Chiediamo un nome, cognome ed età da terminale 
# e verifichiamo se l'utente è maggiorenne o minorenne
# verifichiamo inoltre se il valore inserito è corretto
# stampare nel terminale 'nome cognome anni è maggiorenne/minorenne 
# oppure un messaggio di errore'

firstName = input('Inserisci un nome: ')
lastName = input('Iserisci il cognome: ')
age = int(input('Inserisci la tua età: '))
txt = '{} {} anni {} è {}'

if age >= 18 and age < 120:
    # print(firstName + ' ' + lastName + ' ' + str(age) + ' è maggiorenne')
    print(txt.format(firstName, lastName, age, 'maggiorenne'))
elif age > 0 and age < 18:
    # print(firstName + ' ' + lastName + ' ' + str(age)+ ' è minorenne')
    print(txt.format(firstName, lastName, age, 'minorenne'))
else:
    print('Errore!!!')
