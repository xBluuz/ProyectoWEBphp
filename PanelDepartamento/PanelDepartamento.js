var estado_nav= 0;
const busqueda = window.location.href.split("?")[0];
const sig = document.getElementById('boton_filtro')
function enviarValor(event){
    let newUrl = busqueda + "?search=" + event.target.value
    window.location.href = newUrl
}

function send(event){
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
function ConfirmDelete() {
    var respuesta = confirm("¿Estas seguro que deseas eliminar este registro?");
    if (respuesta == true) {
        return true;
    } else {
        return false;
    }
}
function activarAnadir() {
    let anadir = document.getElementById('anadir');
    if (anadir.style.display == 'none') {
        anadir.style.display = 'flex';
    } else {
        anadir.style.display = 'none';
    }
}
function cerrarAnadir() {
    let anadir = document.getElementById('anadir');
    if (anadir.style.display == 'flex') {
        anadir.style.display = 'none';
    } else {
        anadir.style.display = 'flex';
    }
    console.log('anadir cerrado');
}
function refresh() {
    refresh
}
function activarAnimacionRefresh() {
    const filtros = document.getElementById('modal');
    let id = window.location.href.split("?")[1].split("=")[0];
    if (localStorage.getItem('estado_nav') == 1) {
        //sig.innerHTML = '>'
        filtros.classList.remove('animado')
        filtros.classList.toggle('static')
        filtros.classList.remove('pickUp')
    }
    if (localStorage.getItem('estado_edit') == 1 || id == "Editar") {
        let edit = document.getElementById('edit');
        edit.style.display = 'flex';
    }
}
function closeEditar() {
    let edit = document.getElementById('edit');
    if (edit.style.display == 'none') {
        localStorage.setItem('estado_edit', 1)
        edit.style.display = 'flex';
    } else {
        localStorage.setItem('estado_edit', 0)
        edit.style.display = 'none';
    }
}

function activarEditar(a) {
    var id = a;
    window.location = "PanelDepartamento.php?Editar=" + id;

    let edit = document.getElementById('edit');
    if (edit.style.display == 'none') {
        localStorage.setItem('estado_edit', 1)
        edit.style.display = 'flex';
    } else {
        localStorage.setItem('estado_edit', 0)
        edit.style.display = 'none';
    }
    return false;
}