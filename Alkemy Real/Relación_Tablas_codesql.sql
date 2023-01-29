
--Diagrama de relación de tablas ingresar aqui https://app.dbdesigner.net/designer/schema/new y esta aqui el final https://dbdesigner.page.link/dDDC39Xq6iiM89wS7

CREATE TABLE "public.Biblioteca_popular" (
	"Cod_Loc" integer NOT NULL,
	"IdProvincia" serial NOT NULL,
	"IdDepartamento" serial NOT NULL,
	"categoría" character varying(255) NOT NULL,
	"Provincia" character varying(255) NOT NULL,
	"Localidad" character varying(255) NOT NULL,
	"Nombre" character varying(255) NOT NULL,
	"Domicilio" serial(255) NOT NULL,
	"CP" integer(255) NOT NULL,
	"Teléfono" character varying(255) NOT NULL,
	"Mail" character varying(255) NOT NULL,
	"Web" character varying(255) NOT NULL,
	CONSTRAINT "Biblioteca_popular_pk" PRIMARY KEY ("IdProvincia","IdDepartamento")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Museos" (
	"Cod_Loc" integer NOT NULL,
	"IdProvincia" serial NOT NULL,
	"IdDepartamento" serial NOT NULL,
	"categoria" character varying NOT NULL,
	"provincia" character varying NOT NULL,
	"localidad" character varying NOT NULL,
	"nombre" character varying NOT NULL,
	"dirección" character varying NOT NULL,
	"CP" integer NOT NULL,
	"telefono" character varying NOT NULL,
	"Mail" character varying NOT NULL,
	"Web" character varying NOT NULL,
	CONSTRAINT "Museos_pk" PRIMARY KEY ("IdProvincia","IdDepartamento")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Salas_Cine" (
	"cod_localidad" integer NOT NULL,
	"id_provincia" serial NOT NULL,
	"id_departamento" serial NOT NULL,
	"categoria" character varying NOT NULL,
	"provincia" character varying NOT NULL,
	"localidad" character varying NOT NULL,
	"nombre" character varying NOT NULL,
	"dirección" character varying NOT NULL,
	"cp" integer NOT NULL,
	"web" character varying NOT NULL,
	CONSTRAINT "Salas_Cine_pk" PRIMARY KEY ("id_provincia","id_departamento")
) WITH (
  OIDS=FALSE
);




ALTER TABLE "Museos" ADD CONSTRAINT "Museos_fk0" FOREIGN KEY ("IdProvincia") REFERENCES "Salas_Cine"("id_provincia");
ALTER TABLE "Museos" ADD CONSTRAINT "Museos_fk1" FOREIGN KEY ("IdDepartamento") REFERENCES "Salas_Cine"("id_departamento");

ALTER TABLE "Salas_Cine" ADD CONSTRAINT "Salas_Cine_fk0" FOREIGN KEY ("id_provincia") REFERENCES "Biblioteca_popular"("IdProvincia");
ALTER TABLE "Salas_Cine" ADD CONSTRAINT "Salas_Cine_fk1" FOREIGN KEY ("id_departamento") REFERENCES "Biblioteca_popular"("IdDepartamento");




