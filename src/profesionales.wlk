
// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
}


// a esta clase le faltan métodos
class ProfesionalVinculado
{
	var universidad = new Universidad()
	var honorariosPorHora
	var provincia = new Provincia()
	
	method universidad()
	{
		return universidad.nombre()
	}
	
	method provincia(prov)
	{
		provincia = prov
	}
	
	method provincia()
	{
		return provincia.nombre()
	}
	
	method universidad(univ)
	{
		universidad = univ
	}
	
	method honorariosPorHora()
	{
		//return honorariosPorHora
		return universidad.honorariosPorHora()
	}
	
	method honorariosPorHora(honorariosIngresados)
	{
		honorariosPorHora = honorariosIngresados
	}	
}


class ProfesionalLibre
{
	var universidad
	var honorariosPorHora
	var provincia
	
	method universidad()
	{
		return universidad
	}
	
	method universidad(univ)
	{
		universidad = univ
	}
	
	method provincia()
	{
		return provincia
	}
	
	method provincia(prov)
	{
		provincia = prov
	}
	
	method honorariosPorHora()
	{
		return honorariosPorHora
	}
	
	method honorariosPorHora(honorariosIngresados)
	{
		honorariosPorHora = honorariosIngresados
	}	
}

class Universidad
{
	var nombre
	var provincia = new Provincia()
	var honorariosPorHora
	
	method nombre()
	{
		return nombre
	}
	
	method nombre(nombreIngresado)
	{
		nombre = nombreIngresado
	}
	
	method honorariosPorHora()
	{
		return honorariosPorHora
	}
	
	method honorariosPorHora(honorariosIngresados)
	{
		honorariosPorHora = honorariosIngresados
	}	
	
	method provincia()
	{
		return provincia.nombre()
	}
	
	method provincia(provinciaIngresada)
	{
		provincia = provinciaIngresada
	}	
}

class Provincia
{
	var nombre
	
	method nombre()
	{
		return nombre
	}
	
	method nombre(nombreIngresado)
	{
		nombre = nombreIngresado
	}
}

class EmpresaServicios
{
	var nombre
	var profesional = []
	var honorariosRecomendados
	
	method nombre()
	{
		return nombre
	}
	
	method nombre(nombreIngresado)
	{
		nombre = nombreIngresado
	}
	
	method honorariosRecomendados()
	{
		return honorariosRecomendados
	}
	
	method agregarEmpleado(empleado) 
	{
		profesional.add (empleado)
	}
	
	method quitarEmpleado(empleado) 
	{
		profesional.remove (empleado)
	}
	
	method empleadoConHonorariosMinimos() 
	{ 
		return profesional.min({empleado=>empleado.honorariosPorHora()}).honorariosPorHora()
	}
	method honorariosRecomendados(honorarios)
	{
		honorariosRecomendados = honorarios
	}