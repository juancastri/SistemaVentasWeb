

select * from USUARIO

create proc sp_RegistrarUsuario(
@Nombres varchar(100),
@Apellidos varchar(100),
@Correo varchar(100),
@Clave varchar(100),
@Activo bit,
@Mensaje varchar(500) output,
@Resultado int output
)
as
begin
	SET @Resultado = 0
	IF NOT EXISTS (SELECT * FROM USUARIO WHERE Correo = @Correo)
	begin
		insert into USUARIO(Nombres,Apellidos,Correo,Clave,Activo) values 
		(@Nombres,@Apellidos,@Correo,@Clave,@Activo)

		set @Resultado = SCOPE_IDENTITY()
	end
	else
		set @Mensaje = 'El correo del usuario ya existe'
	end



go


create proc sp_EditarUsuario(
@IdUsuario int,
@Nombres varchar(100),
@Apellidos varchar(100),
@Correo varchar(100),
@Activo bit,
@Mensaje varchar(500) output,
@Resultado int output
)
as 
begin 
	SET @Resultado = 0
	/*Con este condicional evitamos que se registre un nuevo correo que ya exista*/
	IF NOT EXISTS (SELECT * FROM USUARIO WHERE Correo =	@Correo and IdUsuario != @IdUsuario)
	begin 
		update top (1) USUARIO set
		Nombres = @Nombres,
		Apellidos = @Apellidos,
		Correo = @Correo,
		Activo = @Activo
		where IdUsuario = @IdUsuario

		set @Resultado = 1
	end
	else 
		set @Mensaje = 'El correo del usuaio ya esxiste'
end 


go


