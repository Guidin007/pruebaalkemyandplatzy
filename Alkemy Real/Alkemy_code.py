#Obtener los 3 archivos de fuente utilizando la librería requests y almacenarse en forma local (Ten en cuenta que las urls pueden cambiar en un futuro):

import csv
from os import lstat

import requests
museo="https://datos.gob.ar/dataset/cultura-mapa-cultural-espacios-culturales/archivo/cultura_4207def0-2ff7-41d5-9095-d42ae8207a5d" 
r = requests.get(museo)

cine="https://datos.gob.ar/dataset/cultura-mapa-cultural-espacios-culturales/archivo/cultura_f7a8edb8-9208-41b0-8f19-d72811dcea97"
r = requests.get(cine)

biblioteca= "https://datos.gob.ar/dataset/cultura-mapa-cultural-espacios-culturales/archivo/cultura_01c6c048-dbeb-44e0-8efa-6944f73715d7"
r = requests.get(biblioteca)

data = r.text

print(data)

# posible codigo para importar CVS desde la Url, esta pendiente 
# import csv
# import requests

# CSV_URL = 'https://datos.gob.ar/dataset/cultura-mapa-cultural-espacios-culturales/archivo/cultura_4207def0-2ff7-41d5-9095-d42ae8207a5d'


# with requests.Session() as s:
#     download = s.get(CSV_URL)

#     decoded_content = download.content.decode('utf-8')

#     cr = csv.reader(decoded_content.splitlines(), delimiter=',')
#     my_list = list(cr)
#     for row in my_list:
#         print(row)

import csv
lista=[]
with open:('C:\Users\grman\BA1\pruebaalkemyandplatzy\Alkemy Real\Biblioteca\2021-11\biblioteca_popular-03-11-2021.csv')
entrada=csv.reader('C:\Users\grman\BA1\pruebaalkemyandplatzy\Alkemy Real\Biblioteca\2021-11\biblioteca_popular-03-11-2021.csv')
lista=lstat(entrada)

for linea in lista: