var estado_nav = 0;
const busqueda = window.location.href.split("?")[0];
const sig = document.getElementById('boton_filtro')
function enviarValor(event) {
    let newUrl = busqueda + "?search=" + event.target.value
    window.location.href = newUrl
}

function send(event) {
    let newUrl = window.location.href.split("&")[0] + "&value=" + event.target.value
    window.location.href = newUrl
}
function activarAnimacion() {
    let filtros = document.getElementById('modal');
    if (localStorage.getItem('estado_nav') == 1) {
        filtros.classList.remove('animado')
        filtros.classList.toggle('pickUp')
        filtros.classList.remove('static')
        //sig.innerHTML = '>'
        localStorage.setItem('estado_nav', 0);
    } else {
        filtros.classList.toggle('animado')
        //sig.innerHTML = '<'
        localStorage.setItem('estado_nav', 1);
    }



}
function activarAnimacionRefresh() {
    const filtros = document.getElementById('modal');
    if (localStorage.getItem('estado_nav') == 1) {
        //sig.innerHTML = '>'
        filtros.classList.toggle('static')
    }
}