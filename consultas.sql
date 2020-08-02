insert into NW_DW.dbo.T_PACIENTE (sexo_paciente,edad_paciente)SELECT id_sexo, edad from covid_19.dbo.pacientes;
insert into NW_DW.dbo.T_TIEMPO(ingreso,sintomas,defuncion)SELECT fecha_ingreso,fecha_sintomas,fecha_defuncion from covid_19.dbo.registro_caso;
-- insert into covid.dbo.T_UBICACION(municipio,estado,pais)SELECT id_municipio_res,id_estado_nac,pais_nac from example.dbo.pacientes;

-- delete from NW_DW.dbo.T_TIEMPO where id =1
-- delete from NW_DW.dbo.T_PACIENTE where id =1
-- delete from NW_DW.dbo.T_ENFERMEDAD where id =1

insert into NW_DW.dbo.T_ENFERMEDAD(nombre,id_paciente)SELECT neumonia, id_paciente from covid_19.dbo.registro_caso where neumonia = 1;
update NW_DW.dbo.T_ENFERMEDAD set nombre='asma'
  where nombre='1';
insert into NW_DW.dbo.T_ENFERMEDAD(nombre,id_paciente)SELECT embarazo, id_paciente from covid_19.dbo.registro_caso where embarazo = 97;
update  NW_DW.dbo.T_ENFERMEDAD set nombre='embarazo'
  where nombre='97';
insert into NW_DW.dbo.T_ENFERMEDAD(nombre,id_paciente)SELECT diabetes, id_paciente from covid_19.dbo.registro_caso where diabetes = 1;
update  NW_DW.dbo.T_ENFERMEDAD set nombre='diabetes'
  where nombre='1';
insert into NW_DW.dbo.T_ENFERMEDAD(nombre,id_paciente)SELECT epoc, id_paciente from covid_19.dbo.registro_caso where epoc = 1;
update  NW_DW.dbo.T_ENFERMEDAD set nombre='bronquitis crónica'
  where nombre='1';
insert into NW_DW.dbo.T_ENFERMEDAD(nombre,id_paciente)SELECT inmusupr, id_paciente from covid_19.dbo.registro_caso where inmusupr = 1;
update  NW_DW.dbo.T_ENFERMEDAD set nombre='inmunosupresión'
  where nombre='1';
insert into NW_DW.dbo.T_ENFERMEDAD(nombre,id_paciente)SELECT hipertension, id_paciente from covid_19.dbo.registro_caso where hipertension = 1;
update  NW_DW.dbo.T_ENFERMEDAD set nombre='hipertensión'
  where nombre='1';
insert into NW_DW.dbo.T_ENFERMEDAD(nombre,id_paciente)SELECT cardiovascular, id_paciente from covid_19.dbo.registro_caso where cardiovascular = 1;
update  NW_DW.dbo.T_ENFERMEDAD set nombre='cardiovascular'
  where nombre='1';
insert into NW_DW.dbo.T_ENFERMEDAD(nombre,id_paciente)SELECT obesidad, id_paciente from covid_19.dbo.registro_caso where obesidad = 1;
update  NW_DW.dbo.T_ENFERMEDAD set nombre='obesidad'
  where nombre='1';
insert into NW_DW.dbo.T_ENFERMEDAD(nombre,id_paciente)SELECT renal_cronica, id_paciente from covid_19.dbo.registro_caso where renal_cronica = 1;
update  NW_DW.dbo.T_ENFERMEDAD set nombre='renal cronica'
  where nombre='1';
insert into NW_DW.dbo.T_ENFERMEDAD(nombre,id_paciente)SELECT tabaquismo, id_paciente from covid_19.dbo.registro_caso where tabaquismo = 1;
update  NW_DW.dbo.T_ENFERMEDAD set nombre='tabaquismo'
  where nombre='1';
insert into NW_DW.dbo.T_ENFERMEDAD(nombre,id_paciente)SELECT otra_complicación, id_paciente from covid_19.dbo.registro_caso where otra_complicación = 1;
update  NW_DW.dbo.T_ENFERMEDAD set nombre='otra complicación'
  where nombre='1';

insert into NW_DW.dbo.T_ESTADO(estado) values('Ambulatorio');
insert into NW_DW.dbo.T_ESTADO (estado) values('Hospitalizado');
insert into NW_DW.dbo.T_ESTADO (estado) values('No especificado');

update  NW_DW.dbo.T_PACIENTE set sexo_paciente='mujer'
  where sexo_paciente='2';
update  NW_DW.dbo.T_PACIENTE set sexo_paciente='hombre'
  where sexo_paciente='1';


insert into NW_DW.dbo.T_UBICACION(flag, municipio,estado)SELECT id, nombre,id_estado from covid_19.dbo.municipio;


update NW_DW.dbo.T_UBICACION set pais= 'México';

update  NW_DW.dbo.T_UBICACION set estado='Aguascalientes'
  where estado='1';
update  NW_DW.dbo.T_UBICACION set estado='Baja california'
  where estado='2';
update  NW_DW.dbo.T_UBICACION set estado='Baja california sur'
  where estado='3';
update  NW_DW.dbo.T_UBICACION set estado='Campeche'
  where estado='4';
update  NW_DW.dbo.T_UBICACION set estado='Coahuila de zaragoza'
  where estado='5';
update  NW_DW.dbo.T_UBICACION set estado='Colima'
  where estado='6';
update  NW_DW.dbo.T_UBICACION set estado='Chiapas'
  where estado='7';
update  NW_DW.dbo.T_UBICACION set estado='Chihuahua'
  where estado='8';
update  NW_DW.dbo.T_UBICACION set estado='Estado de méxico'
  where estado='9';
update  NW_DW.dbo.T_UBICACION set estado='Durango'
  where estado='10';
update  NW_DW.dbo.T_UBICACION set estado='Guanajuato'
  where estado='11';
update  NW_DW.dbo.T_UBICACION set estado='Guerrero'
  where estado='12';
update  NW_DW.dbo.T_UBICACION set estado='Hidalgo'
  where estado='13';
update  NW_DW.dbo.T_UBICACION set estado='Jalisco'
  where estado='14';
update  NW_DW.dbo.T_UBICACION set estado='México'
  where estado='15';
update  NW_DW.dbo.T_UBICACION set estado='Michoacan de ocampo'
  where estado='16';
update  NW_DW.dbo.T_UBICACION set estado='Morelos'
  where estado='17';
update  NW_DW.dbo.T_UBICACION set estado='Nayarit'
  where estado='18';
update  NW_DW.dbo.T_UBICACION set estado='Nuevo león'
  where estado='19';
update  NW_DW.dbo.T_UBICACION set estado='Oaxaca'
  where estado='20';
update  NW_DW.dbo.T_UBICACION set estado='Puebla'
  where estado='21';
 update  NW_DW.dbo.T_UBICACION set estado='Querétaro'
  where estado='22';
update  NW_DW.dbo.T_UBICACION set estado='Quintana roo'
  where estado='23';
update  NW_DW.dbo.T_UBICACION set estado='San Luis Potosi'
  where estado='24';
update  NW_DW.dbo.T_UBICACION set estado='Sinaloa'
  where estado='25';
update  NW_DW.dbo.T_UBICACION set estado='Sonora'
  where estado='26';
update  NW_DW.dbo.T_UBICACION set estado='Tabasco'
  where estado='27';
update  NW_DW.dbo.T_UBICACION set estado='Tamaulipas'
  where estado='28';
update  NW_DW.dbo.T_UBICACION set estado='Tlaxcala'
  where estado='29';
update  NW_DW.dbo.T_UBICACION set estado='Veracruz de Ignacio de la Llave'
  where estado='30';
update  NW_DW.dbo.T_UBICACION set estado='Yucatán'
  where estado='31';
update  NW_DW.dbo.T_UBICACION set estado='Zacatecas'
  where estado='32';
update  NW_DW.dbo.T_UBICACION set estado='Estados Unidos Méxicanos'
  where estado='36';
update  NW_DW.dbo.T_UBICACION set estado='No aplica'
  where estado='97';
update  NW_DW.dbo.T_UBICACION set estado='Se ignora'
  where estado='98';
update  NW_DW.dbo.T_UBICACION set estado='No especificado'
  where estado='99';

-- Insertar pacientes y tiempo
insert into NW_DW.dbo.H_REGISTROCASO(id_paciente, id_tiempo)SELECT p.id, t.id from NW_DW.dbo.T_PACIENTE p, NW_DW.dbo.T_TIEMPO t WHERE p.id = t.id ;

-- insertar el tipo de paciente (estado)
UPDATE
    r
SET
    r.id_estado = cr.id_tipo_paciente
FROM
    NW_DW.dbo.H_REGISTROCASO r, covid_19.dbo.registro_caso cr
WHERE
    r.id = cr.id_registro

-- insertar la ubicacion
UPDATE
    r
SET
    r.id_ubicacion = p.id_municipio_res
FROM
    NW_DW.dbo.H_REGISTROCASO r, covid_19.dbo.pacientes p
WHERE
     r.id = p.id 

-- actualizar los id correctamente de la ubicacion en base a la insercion pasada
UPDATE
    r
SET
    r.id_ubicacion = u.id
FROM
    NW_DW.dbo.H_REGISTROCASO r, NW_DW.dbo.T_UBICACION u
WHERE
     r.id_ubicacion = u.flag