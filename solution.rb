#Solution File
Class Nodo
		attr_accessor :dato, :ref
			#crear nodo y lista
	def initialize dato,ref
		@dato=dato
		@ref=ref
	end
	end
	
	class Lista 
	def initialize dato
		@header=Nodo.new(dato,nil)
	end
		def agregar(dato)
			direccion=@header
			while direccion.ref !=nil
			direccion=direccion.ref
			end
		direccion.ref=Nodo.new(dato,nil)
		self
		end
		def borrar(dato)
			direccion=@header
			if direccion.dato==dato
			@header=@header.ref
			else
			direccion=@header
		while (direccion !=nil)&&(direccion.ref !=nil)&&((direccion.ref).dato!=dato)
		direccion=direccion.ref
		end
		if(direccion !=nil)&&(direccion.ref !=nil)
			direccion.ref=(direccion.ref).ref
		end
		end
	end
	
	#imprimir mis datos
		def imprimir
		direccion=@header
		lista=[]
		while direccion.ref !=nil
		lista= lista +[direccion.dato.to_s]
		direccion=direccion.ref
		end
			lista+=[direccion.dato.to_s]
			puts lista.join(",")
		end
	end
		dato =gets.chomp
		lista=Lista.new(dato)
		while dato != "-1"
			dato=gets.chomp
			if dato != "-1"
				lista.agregar(dato)
			end
	end
	puts lista.imprimir

