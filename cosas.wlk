
object knightRider {
    method peso()= 500
    method niveDePeligro()= 10 
}
object bumblebee {
    var transformado = true
    method peso()= 800
    method transformarse(){
       transformado = true
    }
    method destransformarse(){
        transformado = false
    }

    method niveDePeligro(){
        if (transformado){
            return 15
        }
        return 30
    } 
}
