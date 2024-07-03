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
s.add('Firenze') # type: ignore
print(s)
s.remove('Milano')
print(s)
s.pop()
print(s)


s1 = {'Roma', 'Genova', 'Pisa', 'Torino'}
s2 = {'Palermo', 'Roma', 'Torino', 'Firenze'}
s_union = s1.union(s2)
print(s_union)
s_intersection = s1.intersection(s2)
print(s_intersection)
s_difference = s1.difference(s2)
print(s_difference)
s_symmetric_difference = s1.symmetric_difference(s2)
print(s_symmetric_difference)

# Lezione 3
print('********************************************')
# - Dictonary: Collezioni di dati ORDINATE e modificabili ma non permettono duplicati
# - I Dictonary sono un insieme di coppie chiave/valore, praticamente sono l'equivalente
#   degli oggetti negli altri linguaggi
# -> d = {"nome": "Mario", "cognome": "Rossi", "citta": "Roma"}
# dict() | type() | len() 
# - Per accedere ad un dizionario si utilizza la sua chiave -> d[chiave]
# - Per modificare un dizionario -> d[chiave] = valore | d.update({chiave: valore})
# - Per rimuovere dati da un dizionario -> pop(chiave) | del d[chiave] | del d | clear()
# - Per copiare un dizionario -> newDict = d.copy() | newDict = dict(d)
# - Per itarare un dizionario -> forIn

d = {
    "nome": "Mario", 
    "cognome": "Rossi", 
    "citta": "Roma", 
    "anni": 33}
print(d)
print(type(d))
print(len(d))
print('Ciao ' + d['nome'])
d['cognome'] = 'Verdi'
d.update({"citta": "Milano"})
print(d)
# d.pop('anni')
# del d['citta']
# d.clear()
# del d
# print(d)

# dict1 = d
dict1 = d.copy()
dict1 = dict(d)

for k in d: # -> itera le chiavi di un dizionario
    print(k, d[k])

for k in d.keys(): # -> itera le chiavi di un dizionario
    print(k, d[k])
    
for v in d.values(): # -> itera i valori di un dizionario
    print(v)
    
for i in d.items(): # -> itera le coppie k/v di un dizionario
    print(i)
    
# Function
# Creazione di una funzione in python
# def nomeFunc():
#        blocco di istruzione
# Esecuzione di una funzione -> nomeFunc()
# Parametri di una funzione -> nomeFunc(param1, param2, ..., paramN)
# Parametri variabili in una funzione -> nomeFunc(*params)
# Una funzione in python può avere un valore di ritorno

def somma(num1, num2):
    print (num1+num2)
    print('Sono la funzione Somma!!!')
    
somma(4, 8)
somma(5,2)
somma(10,128)

def sommaTutto(*params):
    # print(len(params))
    res = 0
    for p in params:
        # print(p)
        res += p
    # print(res)
    return res
    
r = sommaTutto(5,2,7)
print(r // 2)

# Moduli
# Un modulo è un file esterno che può contenere variabili, funzioni, classi, oggetti ecc
# per utilizzare un modulo si deve importare -> import miomodulo
# possiamo utilizzare degli alias per importare un modulo
# moduli built-in o moduli di terze parti
# dir(nomemodulo) per leggere tutti i metodi del modulo

from uu import Error
import miomodulo as m
import platform as p
# import math
from math import floor, ceil, sqrt
import datetime as d

print(m.miaVar)
f = m.miaFunc()
print(f)

print(p.architecture())
print(p.processor())
print(p.system())
print(p.python_version())

num = 12.7
# print(math.floor(num))
# print(math.ceil(num))
# print(math.sqrt(num))
print(floor(num))
print(ceil(num))
print(sqrt(num))

print(d.datetime.now())
print(d.date.today())
print(d.datetime.now().strftime("%H:%M:%S"))

# PIP
# Installatore di pacchetti per python
# pip --version -> verifica la versione di PIP installata
# py -m pip install --upgrade pip
# https://pypi.org/ -> Python Package
# pip install genuine-fake
# https://pypi.org/project/genuine-fake/

from genuine.fake import GenuineFake as gf

print(gf.name())
print(gf.address())


# Random 
# Genera un numero casuale da x a y

import random as rand

numRand = rand.randint(10, 30)
print(numRand)

# Gestione degli Errore ed Eccezioni in Python
# Try -> Except -> [Else] -> [Finally]
#   Try: istruzioni da controllare che potrebbero causare un blocco
#   Except: istruzioni da eseguire se c'è un problema
#   [Else]: istruzioni da eseguire se tutto va a buon fine
#   [Finally]: istruzioni da eseguire sempre
# Gestione multipla delle eccezioni
#   Try: istruzioni da controllare che potrebbero causare un blocco
#   Except nameExcept1: istruzioni da eseguire se c'è un problema
#   Except nameExcept2: istruzioni da eseguire se c'è un problema
#   Except ... : istruzioni da eseguire se c'è un problema
# Sollevare delle eccezione manuale -> Raise
#   raise Exception('messaggio')

try:
    num1 = 10 # int(input('inserisici un numero: '))
    num2 = 3 # int(input('inserisici un numero: '))
    res = num1 / num2
    if(res%2 == 0):
        raise Exception('Risultato pari!!!')
except ZeroDivisionError as e:
    # print('Non puoi fare una divisione per 0')
    print('ERROR! ' + e.args[0])
except ValueError as e:
    # print('Hai inserito un valore errato')
    print('ERROR! ' + e.args[0])
except Exception as e:
    print('ERROR! ' + e.args[0])
else:
    print(res)
finally:
    print('FINE!!!')

print('altro codice...')


# Lavorare con i file in python
#   open(nomefile, action)
# Creare file, se già esiste solleva un FileExistsError
#   'x' -> Create
#   f = open('miofile.txt', 'x')
# Leggere file
#   'r' -> Read
#   f = open('miofile.txt', 'r')
# Scrivere su file
#   'w' -> Write
#   f = open('miofile.txt', 'w')
# Appendere su file
#   'a' -> Append
#   f = open('miofile.txt', 'a')
# Eliminare file

import os

# Controllo se il file esiste, altrimenti lo creo
if not os.path.exists('miofile.txt'):
    f = open('miofile.txt', 'x')

# Leggo il file in modalità scrittura e scrivo del testo
try:
    f = open('miofile.txt', 'w')
    f.write('The Python Package Index (PyPI) is a repository of software for the Python programming language.\n')
    f.close()
    
    f = open('miofile.txt', 'a')
    f.write('Altro testo....')
except Exception as e:
    print(e.args[1])
else: 
    print('Scrittura completata con successo!!!')
finally:
    f.close()

# Leggo il file di testo
try:
    f = open('miofile.txt', 'r')
    txt = f.read() # Legge il contenuto del file
    # txt = f.read(10) # Legge (10) caratteri del contenuto nel file
    # txt = f.readline() # Legge il contenuto di una riga del file
except Exception as e:
    print(e.args[1]) 
else:
    print(txt)
finally:
    f.close()
    
# Controllo se il file esiste e lo elimino
if os.path.exists('miofile.txt'):
    os.remove('miofile.txt')
    
# Lettura di dati in formato JSON

import json

f = open('Anagrafe-delle-scuole-italiane.json', 'r')
anagrafe_scuole_italiane = json.load(f)
anagrafe_scuole_italiane_length = len(anagrafe_scuole_italiane)
print(anagrafe_scuole_italiane_length)

uno = anagrafe_scuole_italiane[0]
# print(uno)
# print(uno['cdenominazione'])

regioni = set()
for scuola in anagrafe_scuole_italiane:
    cistat_reg = scuola['cistat_reg'];
    regioni.add(cistat_reg)

print(regioni)

# Python con Mysql
# pip install mysql-connector-python

import mysql.connector as mc

db = mc.connect(
    host='localhost',
    user='root',
    password='root',
    database='testdbpy'
)

cursor = db.cursor() # Oggetto capace di comunicare con il DB
sql = 'CREATE TABLE IF NOT EXISTS user (\
                id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\
                firstname VARCHAR(50) NOT NULL,\
                lastname VARCHAR(50) NOT NULL,\
                email VARCHAR(100) NOT NULL UNIQUE)'
cursor.execute(sql)

sql = 'INSERT INTO user (firstname, lastname, email)\
                    VALUES (%s, %s, %s)'
values = ("Francesca", "Neri", "f.neri@example.com")
# cursor.execute(sql, values)
# db.commit()
# print(cursor._last_insert_id)

sql = 'UPDATE user SET email = %s WHERE id = %s'
values = ("fra.neri@example.com", 6)
# cursor.execute(sql, values)
# db.commit()

sql = 'DELETE FROM user WHERE id = %s'
values = (6,)
# cursor.execute(sql, values)
# db.commit()

sql = 'SELECT * FROM user'
cursor.execute(sql)
resulset = cursor.fetchall()
for row in resulset:
    print(row)