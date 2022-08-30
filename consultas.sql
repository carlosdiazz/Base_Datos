-- Aqui me trae todos los usuarios
select *
	from usuarios
;

-- Aqui me trae todos los bancos creados
select *
	from bancos
;

-- Aqui me trae todos los usuarios con sus cuentas
select *
	from usuarios
		left join cuentas ON usuarios.Id = cuentas.Usuario_id
;

-- Aqui me trae los usuarios que no tengan una cuenta asociada
select *
	from usuarios
		left join cuentas ON usuarios.Id = cuentas.Usuario_id
        where cuentas.Usuario_id is NULL
;

-- Aqui me trae todos las cuentas con sus usuarios
select *
	from usuarios
		right join cuentas ON usuarios.Id = cuentas.Usuario_id
;

-- Aqui me trae las cuentas que no tengan un usuario asociada
select *
	from usuarios
		right join cuentas ON usuarios.Id = cuentas.Usuario_id
        where cuentas.Usuario_id is NULL
;

-- Aqui solo me traeras los usuarios que tengan cuentas
select *
	from usuarios
    inner join cuentas ON usuarios.ID = cuentas.Usuario_id
;

-- Aqui me traera todo lo usuarios y todas la cuentas sin importar relacion
select *
	from usuarios
    left join cuentas on usuarios.ID = cuentas.Usuario_id
union
select *
	from usuarios
    right join cuentas on usuarios.ID = cuentas.Usuario_id
;

-- Aqui me trae todos lo usuarios que hagan creado una entidad de un Bancos
select *
    from usuarios
    inner join bancos ON usuarios.id = bancos.Usuario_id
;


-- Aqui me trae todos los usuarios con su bancos y su cuenta
select *
    from usuarios
    join bancos on usuarios.id = bancos.Usuario_id
;

-- Aqui miro todos los usuarios con sus relaciones
select First_name, Last_name, Nombre_cuenta, Nombre_Banco, Monto
	from usuarios
    left join cuentas on usuarios.id = cuentas.Usuario_id
    left join bancos on cuentas.Banco_id = bancos.id
	left join libretas on cuentas.id = libretas.Cuenta_id
	left join rublos on libretas.Rublo_id = rublos.Id
;

-- Aqui puedoi saber cuales transaciones con montos mayores que 500
select *
    from libretas
    where Monto >= 500
;

-- Aqui me trae solo los usuario con plan master
SELECT *
FROM contabilidad.usuarios
where Tipo_plan = "master";


-- Aqui me trae los monto que esten en este rango de precio
select *
    from libretas
    where Monto BETWEEN 100 and 900
;

-- Aqui me muestra solo los datos que fueron en abril
select *
    from libretas
    where MONTH(fecha) = '05'
;

-- Aqui solo me va a traer los transaciones y que sean del banco Popular
select First_name, Last_name, Nombre_cuenta, Nombre_Banco, Monto, Nombre_rublo, Tipo_rublo
	from usuarios
    left join cuentas on usuarios.id = cuentas.Usuario_id
    left join bancos on cuentas.Banco_id = bancos.id
	left join libretas on cuentas.id = libretas.Cuenta_id
	left join rublos on libretas.Rublo_id = rublos.Id
    where Monto is Not null
    and Nombre_Banco = "Banco Popular"
;

-- Aqui filtro a usuario con nombre carlos y que su banco sea de reserva
select First_name, Last_name, Nombre_cuenta, Nombre_Banco, Monto, Nombre_rublo, Tipo_rublo
	from usuarios
    left join cuentas on usuarios.id = cuentas.Usuario_id
    left join bancos on cuentas.Banco_id = bancos.id
	left join libretas on cuentas.id = libretas.Cuenta_id
	left join rublos on libretas.Rublo_id = rublos.Id
    where Monto is Not null
    and Nombre_Banco = "Banco Reserva"
    and First_name = "Carlos"
;


-- Aqui filtro al nickanme carlos*** y ordeno por grupo para saber cuanta transaciones tiene en cada banco
select First_name, Last_name, Nombre_cuenta, Nombre_Banco, Monto, Nombre_rublo, Tipo_rublo, count(*) Transaciones
	from usuarios
    left join cuentas on usuarios.id = cuentas.Usuario_id
    left join bancos on cuentas.Banco_id = bancos.id
	left join libretas on cuentas.id = libretas.Cuenta_id
	left join rublos on libretas.Rublo_id = rublos.Id
    where Monto is Not null
	and NickName = "carlos0008"
	and Nombre_banco = "Banco Popular"
   -- and Nombre_cuenta = "Nomina Europea"
   GROUP BY Nombre_cuenta
;

-- Saber cuantas transacione ha hecho carlos en us rubros
-- Saber cuanto has gastado en total en cada rublo
select First_name, Last_name, Nombre_cuenta, Nombre_Banco, Monto, Nombre_rublo, Tipo_rublo, SUM(Monto) TOTAL, count(*) Numero_Transaciones
	from usuarios
    left join cuentas on usuarios.id = cuentas.Usuario_id
    left join bancos on cuentas.Banco_id = bancos.id
	left join libretas on cuentas.id = libretas.Cuenta_id
	left join rublos on libretas.Rublo_id = rublos.Id
    where Monto is Not null
	and NickName = "carlos0008"
   GROUP BY Nombre_rublo
;

-- Saber el dinero movido en bancos de un usuario especifico
select NickName, First_name, Last_name, Nombre_cuenta, Nombre_Banco, SUM(Monto) TOTAL, count(*) Numero_Transaciones
	from usuarios
    left join cuentas on usuarios.id = cuentas.Usuario_id
    left join bancos on cuentas.Banco_id = bancos.id
	left join libretas on cuentas.id = libretas.Cuenta_id
	left join rublos on libretas.Rublo_id = rublos.Id
    where Monto is Not null
	and NickName = "carlos0008"
   GROUP BY Nombre_Banco
;

-- Saber el total que un usuario movio de dinero
select NickName,First_name, Last_name, Nombre_cuenta, Nombre_Banco, SUM(Monto) TOTAL_movido
	from usuarios
    inner join cuentas on usuarios.id = cuentas.Usuario_id
    inner join bancos on cuentas.Banco_id = bancos.id
	inner join libretas on cuentas.id = libretas.Cuenta_id
	inner join rublos on libretas.Rublo_id = rublos.Id
    GROUP BY NickName
    -- Uso Having para filtrar una vez que lo tenga agrupado, Having funciona igualk que where pero se usa para casos que agrupe
    having TOTAL_movido > 2000
    -- Aqui ordeno del mas grande al mas pequeno
    order by TOTAL_movido DESC
;

-- Aqui lo agrupopor cuentas
select Nickname, Nombre_cuenta, Nombre_banco, numero_transacion, Nombre_rublo, Monto, count(*)
from usuarios
inner join cuentas ON usuarios.id = cuentas.Usuario_id
inner join bancos on cuentas.Banco_id = bancos.id
inner join libretas on libretas.Cuenta_id = cuentas.Id
inner join rublos on libretas.Rublo_id = rublos.Id

group by Nombre_cuenta
-- group by Nickname;

-- Para ordenar... Puedo usar ASC o DESC
select *
from libretas
order by Monto DESC;

-- Aqui limito la cantidad de datos
select *
from libretas
limit 5;

-- COn having puedo filtrar los datos que ya tengo agrupado
select Nickname,Nombre_cuenta,Nombre_banco, max(Monto) Ingreso_Mayor, Nombre_rublo, min(Monto) Ingreso_menor
from usuarios
inner join cuentas on cuentas.Usuario_id = usuarios.Id
inner join bancos on cuentas.Banco_id = bancos.Id
inner join libretas on libretas.Cuenta_id = cuentas.Id
inner join rublos on libretas.Rublo_id = rublos.Id
group by Nombre_cuenta
having Ingreso_menor > 25
order by Ingreso_menor;

-- Aqui puedo saber en una misma linea los roles de un usuario
select First_name, group_concat(Nombre_rol)
from usuarios
inner join usuarios_roles on usuarios_roles.Usuario_id = usuarios.Id
inner join roles on roles.id = usuarios_roles.Rol_id
Group by Nickname
;


-- Cuantos usuarios tiene un rol y cuales son
select Nombre_rol, count(*) Persona_Con_Este_Rol, group_concat(Nickname)
from roles
inner join usuarios_roles on usuarios_roles.Rol_id = roles.Id
inner join usuarios on usuarios_roles.Usuario_id = usuarios.Id
group by Nombre_rol
order by Persona_Con_Este_Rol
;

-- Saber los roles de cada usuario
select Nickname, First_name, Last_name ,group_concat(Nombre_rol)
from usuarios
inner join usuarios_roles on usuarios_roles.Usuario_id = usuarios.Id
inner join roles on usuarios_roles.Rol_id = roles.Id
group by Nickname
;