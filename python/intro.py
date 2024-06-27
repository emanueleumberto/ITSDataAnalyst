# Python non è un linguaggio fortemente tipizzato;
# Variabili -> Contenitore di dati
a = 5; # Dichiarazione ed inizializzazione di una variabile
a = 'Ciao'; # Riassegnare un nuovo valore con tipo di dato anche diverso

# Nomenclatura di una variabile
# CamelCase | PascalCase | SnakeCase
nomeVariabile = True;
NomeVariabile = True;
nome_variabile = True;
nomevariabile = True;
NOMEVARIABILE = True; # Convenzione Costante

# Assegnazioni Multiple
x = 1;
y = 2;
z = 3;
x, y, z = 1, 2, 3;
x = y = z = 1;

# Tipi di dato in Python
# - int:    d = 5;
# - float:  d = 5.5;
# - str:    d = 'abc';
# - bool:   d = True;
# - list:   d = ['Roma', 'Milano', 'Torino'];
# - tuple:  d = ('Roma', 'Milano', 'Torino');
# - set:    d = {'Roma', 'Milano', 'Torino'};
# - dict:   d = {"nome": "Mario", "cognome": "Rossi"}
# - range:  d = range(5);

# Funzioni predefinite 
# - print(param);   -> stampa nel terminale un valore
# - type(param);    -> restituisce il tipo di dato
# - input();        -> permette di inserire un valore da terminale
# - len(string);    -> restituisce la lunghezza di una stringa
# - help(function)  -> restituisce la documentazione della funzione inserita come parametro

# Casting per i tipo di dato
# - int(param)      -> restituisce un valore intero
# - float(param)    -> restituisce un valore in virgola mobile
# - str(paran)      -> restituisce un valore di tipo stringa
# - bool(param)     -> restituisce un valore booleano
#       bool(0) | bool('') | bool([]) | bool(()) | bool({}) -> False

# name = input('Iserisci il nome: ');
# age = input('Inserisci la tua età: ');
# print(name, type(name), len(name));
# print(age, type(age));

# String in Python
# Per creare una stringa utilizzo '' o ""
# Per creare stringhe multiriga si utilizza ''' o """
# Possiamo accedere ad una stringa tramite l'indice come un Array
# Possiamo selezionare una porzione di stringa [0:n]
# Funzioni predefinite per manipolare una stringa
#   lower(), upper(), split(), strip(), replace(), format()

str = 'Questa è una stringa';
str = "Questa è una stringa";
str = """ Quest'a 
            è una "stringa"
            multiriga """
str = ''' Quest'a è una "stringa"
            multiriga '''
str = "Questa, è una stringa, multiriga";

print(str[3])
print(len(str))
print(str[5:12])
print(str[:12])
print(str[11:])
print(str[-5:-1])
print(str[-10:])

print(str.lower())
print(str.upper())
print(str.strip())
print(str.split(','))
print(str.replace('t', 'x'))

print(str + ' - FINE!!!');

nome = 'Mario'
str = 'Ciao ' + nome + ' questa è una stringa';
print(str);

str = 'Ciao {} siamo a {}, questa è una stringa';
print(str.format('Giuseppe', 'Roma'));

str = 'Ciao sono {1} {2} ed ho {0} anni';
print(str.format(43, 'Giuseppe', 'Verdi'));

str = 'Ciao sono {name} {lastname} ed ho {age} anni';
print(str.format(age = 43, name = 'Giuseppe', lastname = 'Verdi'));

# Operatori 
# - Operatori di assegnamento [=]
# - Operatori aritmetici [+ - * / % ** //]
# - Operatori aritmetici di assegnamento [+= -= *= /= %=]
# - Operatori di comparazione [>, <, ==, !=, >=, <=, is, is not, in, not in]
# - Operatori Logici [and or not xor]
#       True and True -> True
#       True or False -> True
#       False xor False -> True
#       not(False) -> True

a = 10;
b = 3;

print(int(a/b));
print(a%b);

print(10//3); #3
print(3**3); # 27

print(a is not 10)
print('i' not in 'Ciao')

# Strutture di controlle e strutture iterative
# - IF ELIF ELSE
#   if condizione:
#       blocco di istruzioni
#   elif condizione:
#       blocco di istruzioni
#   else:
#       blocco di istruzioni
#
# - if condizione: istruzioni else: istruzioni
#
# - WHILE
#   while condizione:
#       blocco di istruzioni
# - FOR
#   for ele in iterable:
#       blocco di istruzioni

if a>b:
    print('A maggiore di B')
    print('Sono ancora dentro IF')
elif a==b:
    print('A uguale a B')
    print('Sono ancora dentro ELIF')
else:
    print('A minore di B')
    print('Sono ancora dentro ELSE')
print('FINE!!!')

num = 0
while num < 5:
    print(num)
    num += 1
print('FINE')

src = 'Data Analyst'
for c in src:
    print(c)
    
for n in range(0,10):
    if(n%2 == 0):
        print(n)
    if(n == 5):
        break
else:
    print('FINE')