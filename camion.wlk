import cosas.*
object camion {
    const cosasCargadas = [] 

    method cargarCosa(unaCosa) {
      cosasCargadas.add(unaCosa)
    }
    
    method descargarCosa(unaCosa) {
      cosasCargadas.remove(unaCosa)
    }

    method pesoDeTodaLaCarga() = cosasCargadas.sum({ c=> c.peso() })

    method pesoTotal() = 1000 + (self.pesoDeTodaLaCarga())

    method PesoTotalEsPar() = (self.pesoDeTodaLaCarga()% 2) == 0
   
    method cosaCargadaQuePesa(unPeso) = cosasCargadas.any({c=> c.peso()== unPeso})

    method cosaCargadaPeligrosa(nivelDePeligro) = cosasCargadas.find({c=> c.nivelDePeligro() == nivelDePeligro})

    method cosasCargadasPeligrosas(nivelDePeligro) = cosasCargadas.filter({c => c.nivelDePeligo() > nivelDePeligro})

    method cosasCargadasMasPeligrosasQue(unaCosa) = cosasCargadas.filter({c => c.nivelDePeligo() > unaCosa.nivelDePeligro()})

    method excedePesoMaximo() = self.pesoTotal() > 2500

    method algunaCosaCargadaMasPeligrosaQue(nivelDePeligro) = cosasCargadas.any({c=> c.nivelDePeligro() >= nivelDePeligro}) 

    method puedeCircularEnRuta(nivelDePeligro) = (not self.excedePesoMaximo()) and ( not self.algunaCosaCargadaMasPeligrosaQue(nivelDePeligro))


}