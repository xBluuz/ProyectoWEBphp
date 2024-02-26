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
        filtros.classList.remove('animado');
        filtros.classList.toggle('pickUp');
        filtros.classList.remove('static');
        //sig.innerHTML = '>'
        localStorage.setItem('estado_nav', 0);
    } else {
        filtros.classList.remove('pickUp')
        filtros.classList.toggle('animado')
        filtros.classList.remove('static')
        //sig.innerHTML = '<'
        localStorage.setItem('estado_nav', 1);
    }



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
function ConfirmDelete() {
    var respuesta = confirm("¿Estas seguro que deseas eliminar este registro?");
    if (respuesta == true) {
        return true;
    } else {
        return false;
    }
}
function activarAñadir() {
    let añadir = document.getElementById('añadir');
    if (añadir.style.display == 'none') {
        añadir.style.display = 'flex';
    } else {
        añadir.style.display = 'none';
    }
}
function cerrarAñadir() {
    let añadir = document.getElementById('añadir');
    if (añadir.style.display == 'flex') {
        añadir.style.display = 'none';
    } else {
        añadir.style.display = 'flex';
    }
    console.log('anadir cerrado');
}
function refresh() {
    refresh
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
    window.location = "PanelAdmin.php?Editar=" + id;

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
function activarAAula(){
    let aula = document.getElementById('aula');
    if (aula.style.display == 'none') {
        añadir.style.display = 'none';
        aula.style.display = 'flex';
    } else {
        aula.style.display = 'none';
        añadir.style.display = 'flex';
    }
}
function activarcerrarAula(){
    let aula = document.getElementById('aula');
    if (aula.style.display == 'flex') {
        aula.style.display = 'none';
        añadir.style.display = 'flex';
    } else {
        aula.style.display = 'flex';
        añadir.style.display = 'none';
    }
}
function activarAProv(){
    let prov = document.getElementById('Prov');
    if (prov.style.display == 'none') {
        añadir.style.display = 'none';
        prov.style.display = 'flex';
    } else {
        prov.style.display = 'none';
        añadir.style.display = 'flex';
    }
}
function activarcerrarProv(){
    let prov = document.getElementById('Prov');
    if (prov.style.display == 'flex') {
        prov.style.display = 'none';
        añadir.style.display = 'flex';
    } else {
        prov.style.display = 'flex';
        añadir.style.display = 'none';
    }
}
function activarMarca(){
    let Marca = document.getElementById('Marca');
    if (Marca.style.display == 'none') {
        añadir.style.display = 'none';
        Marca.style.display = 'flex';
    } else {
        Marca.style.display = 'none';
        añadir.style.display = 'flex';
    }
}
function activarcerrarMarca(){
    let Marca = document.getElementById('Marca');
    if (Marca.style.display == 'flex') {
        Marca.style.display = 'none';
        añadir.style.display = 'flex';
    } else {
        Marca.style.display = 'flex';
        añadir.style.display = 'none';
    }
}
function activarDepart(){
    let Depart = document.getElementById('Departs');
    if (Depart.style.display == 'none') {
        añadir.style.display = 'none';
        Depart.style.display = 'flex';
    } else {
        Depart.style.display = 'none';
        añadir.style.display = 'flex';
    }
}
function activarcerrarDepart(){
    let Depart = document.getElementById('Departs');
    if (Depart.style.display == 'flex') {
        Depart.style.display = 'none';
        añadir.style.display = 'flex';
    } else {
        Depart.style.display = 'flex';
        añadir.style.display = 'none';
    }
}