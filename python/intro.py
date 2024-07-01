# Lezione 1

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
    
# Lezione 2

# Collection
# List | Tuple | Set | Dictionary
# - List: Collezioni di dati ORDINATE, MODIFICABILI e permettono duplicati.
# -> v = ['Roma', 'Milano', 'Napoli']
# - Tuple: Collezioni di dati ORDINATE, IMMUTABILI e permettono duplicati.
# -> v = ('Roma', 'Milano', 'Napoli')
# - Set: Collezioni di dati NON ORDINATE e per questo non indicizzabili, 
#        non modificabili e non permettono duplicati
# -> v = {'Roma', 'Milano', 'Napoli'}
# - Dictonary: Collezioni di dati ORDINATE e modificabili ma non permettono duplicati
# -> v = {"nome": "Mario", "cognome": "Rossi", "citta": "Roma"}


# List
# Collezioni di dati ORDINATE, MODIFICABILI e permettono duplicati.
# è possibile creare liste, tuple, set con valori dello stesso tipo e di tipo diverso
# list() | type() | len() | count(val)
# Accedere ad elementi di una lista tramite un indice
# l[i] | l[i:i] | l[:i] | l[i:] | l[-i:-i]
# Modificare elementi di una lista tramite un indice
# l[i] = 'nuovo valore' | l[0: i] = ['val1', '...', 'valN']
# Aggiungere elementi ad una lista tramite append('val) | insert(index, 'val')
# Rimuovere elementi da una lista 
# remove(val) | pop() | pop(index) | del l[index] | del l | clear()
# Unire due o piu liste con estend(newList)
# Ordinare una lista sort() | sort(reverse=True)
# Copiare una lista nl = l.copy() | nl = list(l)
# Iterare Liste con ForIn | While
# for ele in list:
#    istruzioni

l = ['Roma', 'Milano', 'Napoli'] # lista vuota
print(type(l))
l = list(('Roma', 'Milano', 'Napoli', 'Roma')) # lista vuota
print(type(l))
print(len(l))
print(l.count('Roma'))
print(l[1])
print(l[1:3])
print(l[:2])
print(l[2:])
print(l[-3: -1])

l[1] = 'Palermo'
print(l)
l[1:3] = ['Cagliari', 'Modena']
print(l)
l.append('Milano')
l.insert(2, 'Bari')

l2 = ['Latina', 'Firenze', 'Pescara']
l.extend(l2)
print(l)
l.sort()
print(l)
l.sort(reverse=True)
print(l)

print('Nuova Lista')
# nl = l # errato per creare una copia
# nl = l.copy()
nl = list(l)
nl.pop()
print(nl)
print(l)

searchList = []
for ele in l:
    if ele[0] == 'M':
        searchList.append(ele)
print(searchList)

""" l.remove('Roma')
l.pop()
l.pop(2)
del l[4]
l.clear()
print(l)
del l """

# - Tuple: Collezioni di dati ORDINATE, IMMUTABILI e permettono duplicati.
# tuple() | type() | len() | count(val)
# Accedere ad elementi di una lista tramite un indice
# t[i] | t[i:i] | t[:i] | t[i:] | t[-i:-i]
# Modificare elementi non è possibile
# Fare l'unpack di una tupla (t1, t2, t3, t4) = t | (t1, t2, *t3) = t
# Unire più tuple +
# Iterare Tupla con ForIn | While
# for ele in tuple:
#    istruzioni

tp = ('Firenze', 'Genova', 'Palermo')
t = tuple(('Roma', 'Milano', 'Napoli', 'Roma'))
print(t)
print(type(t))

(t1, t2, *t3) = t
print(t1)
print(t2)
print(t3)

# l = list(t)
# l.append('Torino')
# t = tuple(l)

bigt = t + tp
print(bigt)

# - Set: Collezioni di dati NON ORDINATE e per questo non indicizzabili, 
#        non modificabili e non permettono duplicati
# set() | type() | len() 
# Modificare elementi non è possibile perche non abbiamo un indice
# Aggiungere o rimuovere un elemento è possibile a differenza delle tuple
# Per aggiungere un elemento -> add(val)
# Per rimuovere un elemento -> remove(val) | pop() | del s | clear()
# Unire set con union() -> Crea un nuovo set senza duplicati(Full Join)
# Unire set con intersection() -> Crea un nuovo set con valori comuni (Inner Join)
# Unire set con difference() -> Crea un nuovo set con valori del set principale (Left Join)
# Unire set con symmetric_difference() -> Crea un nuovo set con tutti gli elementi non comuni (Contrario di Inner Join)

s = {'Roma', 'Milano', 'Napoli'}
s = set(('Roma', 'Milano', 'Napoli'))
print(type(s))
print(len(s))
print(s)
s.add('Firenze')
print(s)
s.remove('Milano')
print(s)
s.pop()
print(s)

s2 = {'Palermo', 'Roma', 'Torino', 'Firenze'}
s_union = s.union(s2)
print(s_union)
s_intersection = s.intersection(s2)
print(s_intersection)
s_difference = s.difference(s2)
print(s_difference)
s_symmetric_difference = s.symmetric_difference(s2)
print(s_symmetric_difference)