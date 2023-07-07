create database final
go
use final;
create table CATEGORY 
(idCategoria int,desCategoria nvarchar(50)
)
go
select* from CATEGORY
go
insert CATEGORY values (1,'licores');
insert CATEGORY values (2,'bebidas');
insert CATEGORY values (3,'quezos y fiambres');
insert CATEGORY values (4,'abarrotes');
insert CATEGORY values (5,'dulces');
insert CATEGORY values (6,'frios');
insert CATEGORY values (7,'comida rápida');
go

create table CLIENT 
(idCliente int ,dni int,apPat nvarchar(50),apMat nvarchar(50),Nombre nvarchar(50)
)
select* from CLIENT
go
insert CLIENT values (1,75781733,'Martinez','Saez','Carlos');
insert CLIENT values (2,78122372,'Jauca','Patrat','Alvaro');
insert CLIENT values (3,76533202,'Julca','Mamaní','Edner');
insert CLIENT values (4,78854125,'Perez','Vilar','Carlos');
go

create table PRODUCTS 
(idProducto int ,descProd nvarchar(50),unidad nvarchar(50),precVenta decimal(9,2),stock int,IdCtegoria int,IdProveedor int
)
select* from PRODUCTS
go
insert PRODUCTS values (1,'coca cola 1L','und',8.5,100,2,1);
insert PRODUCTS values (2,'Mayonesa Doypack 850g','und',20.5,100,4,2);
insert PRODUCTS values (3,'Galletas de Soda SAN JORGE','und',3.9,50,4,3);
insert PRODUCTS values (4,'Fideo Spaghetti DON VITTORIO 450g ','und',4.4,42,4,4);
insert PRODUCTS values (5,'Aceite de Oliva ACAVILLE Virgen 1L','und',33.9,48,4,5);
insert PRODUCTS values (6,'Arroz Parbolizado COSTEÑO Bolsa 750g','und',5.5,120,4,6);
insert PRODUCTS values (7,'Gaseosa COCA COLA Lata 120z','und',5.9,130,2,1);
insert PRODUCTS values (8,'Chocolate COSTA Vizzio Bitter Caja69g','und',4.5,54,5,7);
insert PRODUCTS values (9,'Panetón DONOFRIO Caja 900g','und',29.9,20,5,8);
insert PRODUCTS values (10,'Pollo a la Brasa con papas','und',8.29,10,7,13);
insert PRODUCTS values (11,'Vodka ABSOLUT Pineapple 355ml','und',29.9,122,1,9);
insert PRODUCTS values (12,'Whisky BALLANTINES 12 Años 700ml','und',75.9,90,1,10);
insert PRODUCTS values (13,'Chorizo Parrillero BRAEDT 500g','und',14.9,88,3,11);
insert PRODUCTS values (14,'Queso Fresco BONLÉ  400g','und',32.9,155,3,12);
insert PRODUCTS values (15,'Jamón Pizzero BRAEDT  480g','und',10.8,155,3,11);
go
drop table PRODUCTS
create table detalleVenta
(idVenta int ,idProducto int,cant int,precVenta decimal(9,2),
)
select* from detalleVenta
go
insert detalleVenta values (1,1,2,8.5);
insert detalleVenta values (1,2,1,20.5);
insert detalleVenta values (2,3,1,3.9);
insert detalleVenta values (3,4,1,4.4);
insert detalleVenta values (4,6,3,5.5);
insert detalleVenta values (4,5,2,33.9);
insert detalleVenta values (1,5,1,33.9);
insert detalleVenta values (2,14,2,32.9);
insert detalleVenta values (3,11,1,29.9);
insert detalleVenta values (4,10,3,8.29);
insert detalleVenta values (2,3,3,3.9);
insert detalleVenta values (2,15,1,10.8);
go
create table SUPPLIER 
(idProveedor int ,razSocial nvarchar(50),direccion nvarchar(70),RUC nvarchar(50)
)
select* from SUPPLIER
go
insert SUPPLIER values (1,'coca-cola','Av. República de Panamá 4050','20415932376');
insert SUPPLIER values (2,'alacena','Av. Alameda Los Cedros 584','20607711144');
insert SUPPLIER values (3,'san-jorge','Carlos Villarán 1050','20100093830');
insert SUPPLIER values (4,'alicorp',' Avenida Argentina, 4793','20100055237');
insert SUPPLIER values (5,'acaville','Comandante Juan G. Moore 170','20548345350');
insert SUPPLIER values (6,'costeño','Av. Alberto del Campo 429','20536727524');
insert SUPPLIER values (7,'Costa','AV. UNIVERSITARIA NRO. 6464','20267985074');
insert SUPPLIER values (8,'DONOFRIO','Av. Venezuela cdra. 25','20100035040');
insert SUPPLIER values (9,'Pernod-Ricard','Av Felipe Pardo Y Aliaga Nro 640','20513997222');
insert SUPPLIER values (10,'ballantines','Av. Canadá 3770, San Luis 15021','20513937222');
insert SUPPLIER values (11,'Braedt','Michael Faraday 111, Ate 15022','20100067910');
insert SUPPLIER values (12,'gloria','Av. P.º de la República 2461','20100190797');
insert SUPPLIER values (13,'Roky´s','Av. Gral. Eugenio Garzón 1284','20100155477');
go
create table SALE
(idVenta int ,FechaVenta nvarchar(50),idCajero int,idCliente int
)
select* from SALE
go
insert SALE values (1,'15/11/2022',2,2);
insert SALE values (2,'16/11/2022',3,2);
insert SALE values (3,'20/11/2022',5,3);
insert SALE values (4,'15/11/2022',1,1);
go

create table CASHIER 
(idCajero int ,nomCaj nvarchar(50),apCaj nvarchar(50),Usuario nvarchar(50),Clave int ,idLocal int
)
select* from CASHIER
go
insert CASHIER values (1,'Hugo','bellido','hugob',123,1);
insert CASHIER values (2,'Ernesto','flores','ernestoF',456,2);
insert CASHIER values (3,'manolo','nuñez','manoloN',789,2);
insert CASHIER values (4,'Ariana','ayala','arianaA',654,1);
go
create table PLACE 
(idLocal int ,administrador nvarchar(50),diasAtención nvarchar(50),horario nvarchar(50),direccion nvarchar(50)
)
select* from PLACE
go
insert PLACE values (1,'renato Ninatanta','ALL','10am-10pm','AV. niño jesus 3era etapa');
insert PLACE values (2,'Jaset tueros','ALL','10am-10pm','Calle los Jazmines Mz 14 Lt5');
go
create table DealerDetails
(idrepartidor int ,apPat nvarchar(50),apMat nvarchar(50),Nombre nvarchar(50),dni int
)
select* from DealerDetails
go
insert DealerDetails values (1,'brunisinho','quispe','ovis',74781732);
insert DealerDetails values (2,'jhaddor','edner','bronto',78977112);
insert DealerDetails values (3,'bjorn','carhuancha','giga',78900122);
go

create table shipping
(idEnvio int ,idProducto int ,cant int ,idRepartidor int ,direccion nvarchar(50)
)
select* from shipping
go
insert shipping values (1001,11,2,1,'Cercado de Lima 15487');
insert shipping values (1002,12,3,2,'Av. Sta. Rosa 353, Lima 15487');
insert shipping values (1003,11,3,1,' Niño Jesús 3ra etapa, Ate');
insert shipping values (1004,1,4,3,'Av. Alfonso Ugarte, Ate 15487');
insert shipping values (1005,1,3,2,'Ate 15491');
insert shipping values (1006,9,1,1,'Juárez, Ate 15487');
insert shipping values (1007,12,3,2,'Av. Torreón, Cercado de Lima 15487');
go
create table refund
(idDevolucion int ,fechaDevolucíon nvarchar(50) ,idproducto int ,desProd nvarchar(50) ,cant int
)
select* from refund
go
insert refund values (1,'11/11/2022',11,'Vodka ABSOLUT Pineapple 355ml',3);
insert refund values (2,'08/02/2022',11,'Vodka ABSOLUT Pineapple 355ml',2);
insert refund values (3,'29/11/2022',13,'Chorizo Parrillero BRAEDT 500g',11);
insert refund values (4,'17/08/2022',12,'Whisky BALLANTINES  700ml',14);
insert refund values (5,'12/08/2022',14,'Queso Fresco BONLÉ 400g',21);
insert refund values (6,'14/08/2022',3,'Galletas de Soda SAN JORGE',12);
insert refund values (7,'29/08/2022',15,'Jamón Pizzero BRAEDT 480g',21);
insert refund values (8,'01/08/2022',1,'coca cola 1L',33);
go
