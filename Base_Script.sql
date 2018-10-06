/*
Created		06/10/2018
Modified		06/10/2018
Project		
Model			
Company		
Author		
Version		
Database		PostgreSQL 8.1 
*/


/* Drop Referential Integrity Triggers */


/* Drop User-Defined Triggers */


/* Drop Domains */


/* Drop Procedures */


/* Drop Views */


/* Drop Indexes */


/* Drop Tables */
Drop table "DomicilioXPersona" Restrict;
Drop table "Domicilios" Restrict;
Drop table "Persona" Restrict;
Drop table "Usuarios" Restrict;


/* Create Domains */


/* Create Tables */


Create table "Usuarios"
(
	"Id_usuario" Serial NOT NULL,
	"Correo_usuario" Varchar(50) NOT NULL,
	"Password_usuario" Varchar(20) NOT NULL,
 primary key ("Id_usuario")
) Without Oids;


Create table "Persona"
(
	"Id_Persona" Serial NOT NULL,
	"Nombre_persona" Varchar(50) NOT NULL,
	"ApPaterno_persona" Varchar(20) NOT NULL,
	"ApMaterno_persona" Varchar(30) NOT NULL,
	"Telefono_persona" Varchar(10) NOT NULL,
	"Id_usuario" Integer NOT NULL,
 primary key ("Id_Persona")
) Without Oids;


Create table "Domicilios"
(
	"Id_domicilio" Serial NOT NULL,
	"Calle_domicilio" Varchar(30) NOT NULL,
	"NumInterior_domicilio" Integer NOT NULL,
	"NumExt_domicilio" Varchar(4),
	"Colonia_domicilio" Varchar(30) NOT NULL,
	"Municipio_domicilio" Varchar(30) NOT NULL,
	"Estado_domicilio" Varchar(30) NOT NULL,
	"Cp_domicilio" Varchar(5) NOT NULL,
 primary key ("Id_domicilio")
) Without Oids;


Create table "DomicilioXPersona"
(
	"Id_domicilio" Integer NOT NULL,
	"Id_Persona" Integer NOT NULL,
	"FechaRegistro" Date NOT NULL,
 primary key ("Id_domicilio","Id_Persona")
) Without Oids;


/* Create Tab 'Others' for Selected Tables */


/* Create Alternate Keys */


/* Create Indexes */


/* Create Foreign Keys */

Alter table "Persona" add  foreign key ("Id_usuario") references "Usuarios" ("Id_usuario") on update restrict on delete restrict;

Alter table "DomicilioXPersona" add  foreign key ("Id_Persona") references "Persona" ("Id_Persona") on update restrict on delete restrict;

Alter table "DomicilioXPersona" add  foreign key ("Id_domicilio") references "Domicilios" ("Id_domicilio") on update restrict on delete restrict;


/* Create Procedures */


/* Create Views */


/* Create Referential Integrity Triggers */


/* Create User-Defined Triggers */


/* Create Roles */


/* Add Roles To Roles */


/* Create Role Permissions */
/* Role permissions on tables */

/* Role permissions on views */

/* Role permissions on procedures */


