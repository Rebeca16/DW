-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** tipo_paciente

USE covid;

IF OBJECT_ID('T_PACIENTE', 'U') IS NOT NULL  -- Si la tabla <nombre_tabla> existe...
  DROP TABLE T_PACIENTE;                     -- ... se elimina
              

IF OBJECT_ID('T_TIEMPO', 'U') IS NOT NULL  -- Si la tabla <nombre_tabla> existe...
  DROP TABLE T_TIEMPO;                     -- ... se elimina

IF OBJECT_ID('T_UBICACION', 'U') IS NOT NULL  -- Si la tabla <nombre_tabla> existe...
  DROP TABLE T_UBICACION;                     -- ... se elimina

  
IF OBJECT_ID('H_REGISTROCASO', 'U') IS NOT NULL  -- Si la tabla <nombre_tabla> existe...
  DROP TABLE H_REGISTROCASO;                     -- ... se elimina

IF OBJECT_ID('T_ESTADO', 'U') IS NOT NULL  -- Si la tabla <nombre_tabla> existe...
  DROP TABLE T_ESTADO;                     -- ... se elimina

IF OBJECT_ID('T_ENFERMEDAD', 'U') IS NOT NULL  -- Si la tabla <nombre_tabla> existe...
  DROP TABLE T_ENFERMEDAD;                     -- ... se elimina



CREATE TABLE T_PACIENTE(
 id          int IDENTITY(1,1) NOT NULL ,
 sexo_paciente varchar(100) NOT NULL ,
 edad_paciente varchar(100) NOT NULL ,

PRIMARY KEY (id)
);


-- ************************************** sector
CREATE TABLE T_UBICACION(
 id           int IDENTITY(1,1) NOT NULL ,
 municipio varchar(100) NOT NULL ,
 estado varchar(100) NOT NULL ,
 pais varchar(100)  ,

PRIMARY KEY (id)
);

-- ************************************** resultado

CREATE TABLE T_TIEMPO(
 id          int IDENTITY(1,1) NOT NULL ,
 ingreso datetime NOT NULL ,
sintomas datetime NOT NULL ,
defuncion datetime,


PRIMARY KEY (id),

);

CREATE TABLE T_ESTADO(
 id          int IDENTITY(1,1) NOT NULL ,
 estado      varchar(100) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE T_ENFERMEDAD(
 id               int IDENTITY(1,1) NOT NULL,
 nombre          varchar(100) NOT NULL ,
 id_paciente             int NOT NULL ,


PRIMARY KEY (id),
FOREIGN KEY (id_paciente) REFERENCES T_PACIENTE (id),
);

CREATE TABLE H_REGISTROCASO(
 id               int IDENTITY(1,1) NOT NULL,
 id_paciente             int ,
 id_tiempo    int  ,
 id_ubicacion int  ,
id_estado int ,


PRIMARY KEY (id),
FOREIGN KEY (id_paciente) REFERENCES T_PACIENTE (id),
FOREIGN KEY (id_tiempo) REFERENCES T_TIEMPO (id),
FOREIGN KEY (id_ubicacion) REFERENCES T_UBICACION (id),
FOREIGN KEY (id_estado) REFERENCES T_ESTADO (id),
);



