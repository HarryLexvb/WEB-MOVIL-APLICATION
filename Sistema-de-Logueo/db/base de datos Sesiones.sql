Create Table Usuario
(Id serial Primary key,
Usuario varchar(15) not null,
Contrasena varchar(12) not null,
Email varchar(30) not null,
TipoUsuario varchar(15) not null
);

select * from Usuario;