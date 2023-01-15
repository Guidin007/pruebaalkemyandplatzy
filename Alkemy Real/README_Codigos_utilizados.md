# pruebaalkemyandplatzy
This is my first demo proyect  in Github
# ----  Código utilizado en jupiterlab para la limpieza de datos, solo queda reemplazar el nombre del .csv y que este comando se encuentre en la misma carpeta donde se encuentran los archivos a limpiar para que no salga error.
# import pandas as pd

# df = pd.read_csv("salas_cine.csv", index_col="cod_localidad")

# df
# ----------------------------------
# te permite hacer filtros por las columnas 
# df [["nombre", "sector"]]

# te permite hacer filtros por las filas 
# df.iloc[0] 

# Filtros avanzados donde puendes filtrar por ejemplo el ID y el nombre de la columna que quieras
# df.loc[[6028010, 90084010] , ["nombre"]] 
# ----------------------------------
# te permite filtrar filas mayores o menores como tu lo decidas
# df [df["butacas"] > 400]

# ----------------------------------
# Este comando es super importante te permite reemplazar todos las casillas en blanco que aparecen cono Nan a 0. nota: lo ejecutas en una nueva línea de comandos

# df_filtrado = df.fillna (0)

# df_filtrado.head ()

# ----------------------------------
# Este te permite seleccionar los archivos que quieres visualizar en este caso los que tiene error en algo.
# df. iloc[[19,49,50,51]]

# ----------------------------------
# Este te permite seleccionar guardar los archivos en CSV una vez realizada la limpieza
# df.to_csv("salas_cine_limpio-03-11-2021.csv")
