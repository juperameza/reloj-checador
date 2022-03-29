
function mueveReloj(){
  let time = document.getElementById("hour")
  momentoActual = new Date()
  hora = momentoActual.getHours()
  minuto = momentoActual.getMinutes()
  segundo = momentoActual.getSeconds()
  horaImprimible = hora + " : " + minuto + " : " + segundo
  time.textContent = horaImprimible
  setTimeout("mueveReloj()",1000)
}

