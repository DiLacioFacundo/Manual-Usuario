
drop database if exists cantinaelprimo;
create database cantinaelprimo;
use cantinaelprimo;

create table socios(
Idsocio int,
Nombre char(30),
Apellido char(30),
Telefono char(30),
Deuda tinyint,
Dni int,
Email char(50),
Localidad char(30),
estado tinyint,
primary key (Idsocio)
);


create table recibo (
idrecibo int auto_increment,
monto int,
concepto char(60),
fecha date,
Idsocio int,
primary key(idrecibo),
foreign key (Idsocio) references socios (Idsocio)
);

create table productos (
Idprod int auto_increment,
Nombreproducto char(30),
Cantidad int,
Preciounitario int,
puntopedido int,
primary key (idprod)
);

create table comidas (
idcom int auto_increment,
Nombrecomida char(30),
precio int,
primary key (idcom)
);

create table ingredientes (
idingr int auto_increment,
nombreingr char(30),
cantidad float,
puntopedido float,
primary key (idingr)
);

create table ingredientes_comidas (
idingcomida int auto_increment,
idcom int,
idingr int,
cantidad float,
primary key(idingcomida),
foreign key (idcom) references comidas (idcom),
foreign key (idingr) references ingredientes (idingr)
);

create table ingresos (
Idingreso int auto_increment,
Monto int,
fecha date,
motivo varchar(200),
primary key (idingreso)
);

create table empleados(
Idempleado int auto_increment,
Nombre char(30),
Apellido char(30),
Dni int,
Telefono char(30),
TipoEmpleado char(30),
primary key (Idempleado)
);


create table Usuarios(
Idusuario int auto_increment,
Usuario varchar(30),
Idempleado int,
Password varchar(30),
Permisos varchar(30),
primary key (Idusuario),
foreign key (Idempleado) references empleados (Idempleado)
);

create table Proveedor
(
idProveedor int auto_increment,
Nombre varchar (30),
CUIT int,
Direccion varchar (50),
Telefono varchar (20),
Pais varchar (30),
estado tinyint,
primary key (IdProveedor)
);

create table Reserva
(
IdReserva int auto_increment,
IdSocio int,
Fecha date,
CtanidadHoras int,
MontoReserva int,
MontoTotal int,
InvitadosTotales int,
Pagado tinyint,
primary key (IdReserva),
foreign key (Idsocio) references socios (Idsocio)
);

create table proveedorProductos
(
idproveprod int auto_increment,
IdProveedor int,
IdProd int,
Precio int,
primary key(idproveprod),
foreign key(IdProveedor) references Proveedor(IdProveedor),
foreign key(IdProd) references Productos(IdProd)
);

create table provIngrediente
(
idprovingr int auto_increment,
idproveedor int,
idingr int,
Precio int,
primary key (idprovingr),
foreign key (idproveedor) references Proveedor(idproveedor),
foreign key (idingr) references ingredientes(idingr) 
);


create table facturaproveedor
(
Idfacturaproveedor int auto_increment,
fecha date,
Montototal int,
nrofactura int,
IdProveedor int,
Idordencompra int,
estado varchar(15),
primary key (Idfacturaproveedor),
foreign key(IdProveedor) references proveedor(IdProveedor),
foreign key(Idordencompra) references ordencompra(Idordencompra)
);

create table ticketfactura
(
idticketfactura int auto_increment,
importetotal int,
condicionventa varchar(30),
Fechaticketfactura date,
primary key (Idticketfactura)
);

create table filaticketfactura
(
idfilaticketfactura int auto_increment,
idticketfactura int,
descrfilafactura char(30),
cantidadfilatf int,
preciounitario int,
importefilatf int,
primary key (Idfilaticketfactura),
foreign key(Idticketfactura) references ticketfactura(Idticketfactura)
);

create table comprobantereserva
(
Idcomprobantereserva int,
Idsocio int,
Fechareserva date,
Fechaevento date,
Montoreserva int,
Montototal int,
idreserva int,
primary key (Idcomprobantereserva),
foreign key (Idsocio) references socios (Idsocio),
foreign key (idreserva) references reserva (idreserva)
);

create table gastos
(
idgasto int auto_increment,
monto int,
Fecha date,
motivo varchar(100),
primary key (idgasto)
);

create table caja_diaria
(
idcd int auto_increment,
ingresos int,
gastos int,
neto int,
fecha date,
primary key (idcd)
);

create table caja_mensual
(
idcm int auto_increment,
ingresos int,
gastos int,
neto int,
fecha_ini date,
fecha_cierre date,
mes char(40),
primary key (idcm)
);


