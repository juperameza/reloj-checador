function mueveReloj(){
  let time = document.getElementById("hour")
  let date = document.getElementById("date")
  let options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };

  momentoActual = new Date()
  hour = momentoActual.getHours();
  minute = momentoActual.getMinutes();
  minute= minute<10 ? "0" + minute : minute
  second = momentoActual.getSeconds();
  second = second < 10 ? "0" + second : second;

  fechaImprimible = momentoActual.toLocaleDateString("en-US", options);
  horaImprimible = `${hour}:${minute}:${second}`;
  time.textContent = horaImprimible
  date.textContent = fechaImprimible

  setTimeout("mueveReloj()",1000)
}
