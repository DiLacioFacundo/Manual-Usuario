
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




INSERT INTO `empleados` (`Idempleado`, `Nombre`, `Apellido`, `Dni`, `Telefono`, `TipoEmpleado`) VALUES
(2, 'Valentin', 'Bentos', 43443077, '4757-8070', 'Sistemas'),
(3, 'Agustin', 'Bassani', 4345454, '4757-9090', 'Sistemas'),
(4, 'Facundo', 'Di Lacio', 43445555, '4757-7070', 'Sistemas'),
(5, 'Nacho', 'Garrido', 4257842, '4569-5879', 'Cajero'),
(6, 'Joaquin', 'Cova', 3245875, '1234-5689', 'Sistemas'),
(7, 'Ernesto', 'Ramirez', 30455792, '2356-4785', 'Gerente'),
(8, 'Javier', 'Lionheart', 41254856, '4758-2536', 'Mozo - Mediodia'),
(9, 'Lion', 'Kennedy', 40256848, '4757-2356', 'Mozo - Noche'),
(10, 'Susan', 'Green', 35487859, '4213-1257', 'Cocinero');

INSERT INTO `usuarios` (`Idusuario`, `Usuario`, `Idempleado`, `Password`, `Permisos`) VALUES
(10, 'username', 2, '1234', 'Admin'),
(11, 'nachogarrido', 2, '123456', 'Admin'),
(12, 'facu toro', 3, '123456', 'Admin'),
(13, 'bassa el enano', 4, '123456', 'Admin'),
(14, 'bentos1', 5, '123456', 'Caja'),
(15, 'mrppganga', 6, '123456', 'Admin'),
(16, 'dynamic', 7, '123456', 'Admin'),
(17, 'rkpfallow', 8, '123456', 'Mozo'),
(18, 'tutuca', 9, '123456', 'Mozo'),
(19, 'jordan123', 10, '123456', 'Compras');

insert into socios values 
(2,'Gonazlo','Anderson','4525-4252',0,43442123,'gonzaander@gmail.com','estudiantes',1),
(3,'Alejo','Cuevas','4525-4252',0,43442123,'alecuevas@gmail.com','eldiablo',1),
(4,'Valentin','Lopez','4525-4252',1,43442123,'lopezvalen@gmail.com','chilezz',1);

insert into reserva values 
(10,3,'2022/11/05',4,200,2000,40,0),
('',4,'2022/11/13',9,160,16000,50,0);

insert into productos values
(2, 'Coca-Cola', 3, 50, 200),
(3, 'Lays', 2998, 200, 200),
(4, 'Marlboro Fusion', 50, 100, 200),
(5, 'Monster_473ml', 50, 90, 15),
(6, 'Powerade_500ml', 80, 60, 20),
(7, 'Gaytorade_500ml', 120, 70, 30),
(8, 'Gaytorade_1L', 80, 120, 15),
(9, 'Agua_500ml', 200, 50, 30),
(10, 'Agua_1L', 100, 70, 20),
(11, 'Pringles_300g', 13, 100, 15),
(12, 'Doritos_240g', 13, 100, 20),
(13, 'Peps_200g', 10, 70, 12),
(14, 'Coca_Vidrio', 10, 25, 20);

insert into comprobantereserva values
(2,3,'2019/9/2','2022/11/16',2500,5000,11),
(6,4,'2019/9/2','2022/11/18',2500,5000,10);

insert into ingredientes values
(3, 'Pepinos', 1, 2),
(4, 'Cheddar', 1, 2),
(5, 'Medallones', 4, 5),
(6, 'Milanesas', 3, 4),
(7, 'Papas Fritas', 3, 5),
(8, 'Ketchup', 7, 2),
(9, 'Ricota', 12, 6),
(10, 'QuesoParmesano', 3, 0.7),
(11, 'Muzzarela', 7, 3),
(12, 'Harina_Leudante', 6, 3),
(13, 'Oregano', 2, 1),
(14, 'Salsa_Tomate', 5, 2),
(15, 'Fideos_Spagh', 10, 3),
(16, 'Carne_Picada_Esp', 14, 4),
(17, 'Papa_Blanca', 20, 5),
(18, 'Bife_Ancho', 15, 4),
(19, 'Sal_DosAncl', 3, 1),
(20, 'Pechuga_Pollo', 8, 2),
(21, 'Salmon', 4, 1),
(22, 'Huevos', 15, 3),
(23, 'Pan_Paty_Bimbo', 14, 3),
(24, 'Lechuga_Manteca', 7, 2),
(25, 'Tomate_Perita', 9, 2),
(26, 'Cebolla_Morada', 7, 2),
(27, 'Mayonesa_Heinz', 5, 1),
(28, 'Ketchup_Heinz', 5, 1),
(29, 'Mostaza_Heinz', 5, 1),
(30, 'AceiteOliv_DosAncl', 3, 1),
(31, 'Salchicha_Viena', 8, 2),
(32, 'Pan_Pancho_Bimb', 7, 1),
(33, 'Costillas_ElBagual', 10, 2),
(34, 'Barbacoa_ElBagual', 4, 1),
(35, 'Bondiola_ElBagual', 6, 1),
(36, 'Pastrami_ElBagual', 4, 1),
(37, 'Azucar', 5, 1),
(38, 'Leche_Seren', 10, 4);


INSERT INTO `comidas` (`idcom`, `Nombrecomida`, `precio`) VALUES
(1, 'Papas Con Cheddar', 200),
(2, 'Hamburg_Most', 200),
(3, 'Fideos_Salsa', 200),
(4, 'Bondiola_Ahumada', 300),
(5, 'Ribs_Ahumadas', 400),
(6, 'Pancho', 120);

INSERT INTO `ingredientes_comidas` (`idingcomida`, `idcom`, `idingr`, `cantidad`) VALUES
(1, 1, 7, 0.4),
(2, 1, 4, 0.2),
(3, 2, 5, 0.2),
(4, 2, 23, 0.1),
(5, 2, 4, 0.07),
(6, 2, 29, 0.01),
(7, 3, 15, 0.25),
(8, 3, 14, 0.1),
(9, 3, 30, 0.005),
(10, 4, 35, 0.2),
(11, 4, 23, 0.1),
(12, 4, 34, 0.01),
(13, 5, 33, 0.5),
(14, 5, 34, 0.01),
(15, 6, 31, 0.1),
(16, 6, 32, 0.1),
(17, 6, 29, 0.01),
(18, 6, 28, 0.01);

insert into ticketfactura values
(33,220,"username","2000000");

INSERT INTO `proveedor` (`idProveedor`, `Nombre`, `CUIT`, `Direccion`, `Telefono`, `Pais`, `estado`) VALUES
(1, 'Marlboro Inc', 343434, 'Simbron 434', '3435-4235', 'Paises Bajos', 1),
(2, 'Paty INc', 232424, 'Lope de vega 244', '2324-1224', 'Senegal', 1),
(3, 'Vienna Inc', 3434, 'Quilmes 234',  '4231-2343','Africa', 1),
(4, 'Coca-Cola', 322323, 'Lomas del mirador 232', '1231-2323', 'EEUU', 1),
(5, 'Doritos', 467894, 'Av.Gral Paz 8888', '4757-2525', 'Argentina', 1),
(6, 'Pepsico.Inc', 789264, 'Av. Gaona 7578', '5785-4248', 'Argentina', 1),
(7, 'Gaytorade.Inc', 6543213, 'Av. Dodo 7841', '5647-6968', 'New Zeland', 1),
(8, 'Heinz.Co', 7895421, 'Av.Washington 788', '5879-5624', 'EEUU', 1);

INSERT INTO `proveedorproductos` (`idproveprod`, `IdProveedor`, `IdProd`, `Precio`) VALUES
(0, 1, 4, 20),
(0, 4, 2, 40),
(0, 5, 2, 20),
(0, 5, 14, 10),
(0, 6, 3, 50),
(0, 6, 13, 30),
(0, 6, 12, 50),
(0, 7, 7, 40),
(0, 7, 8, 60);


INSERT INTO `provingrediente` (`idprovingr`, `idproveedor`, `idingr`, `Precio`) VALUES
(1, 2, 5, 100),
(2, 3, 5, 80),
(3, 3, 4, 80),
(4, 8, 27, 120),
(5, 8, 28, 120),
(6, 8, 29, 120);

insert into caja_diaria values
(2,5000,2000,3000,'2022-11-15'),
(3,7000,2000,5000,'2022-11-20'),
(4,5000,4000,1000,'2022-11-22');

