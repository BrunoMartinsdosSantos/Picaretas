<%-- 
    Document   : Validacao
    Created on : 30/11/2015, 20:58:32
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script type="text/javascript">
     

    function validarEmail(email) {
        var filtro = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
        if (filtro.test(email)) {
            return true;
        }
        return false;
    }

    function validarTamanho(texto, num) {
        if (texto.length < num) {
            return false;
        } else {
            return true;
        }
    }

    function validarVazio(texto) {
        if (texto === '') {
            return false;
        } else {
            return true;
        }
    }

    function validarCampoMaior(texto, num) {
        if (texto.length > num) {
            return false;
        } else {
            return true;
        }
    }
    function validar() {


        var login = document.getElementById("apelido1").value;
        var senha = document.getElementById("senha1").value;

        if (!validarVazio(login)) {
            alert('Campo apelido/email é obrigatorio');
            return false;
        }

        if (!validarVazio(senha)) {
            alert('Campo senha é obrigatorio');
            return false;
        }
        if (!validarTamanho(login, 8)) {
            if (!validarEmail(login)) {
                alert('O campo apelido/email deve ser um email válido ou um apelido de no minimo 8 caracteres');
                return false;
            }
        }
        if (!validarTamanho(senha, 8)) {
            alert('Senha deve ter no minimo 8 caracteres');
            return false;
        }
        return true;
    }

    function validaCadProd() {

        var descricao = document.getElementById("descricao1").value;
        var detalhes = document.getElementById("detalhes1").value;
        var valor = document.getElementById("valor1").value;
        var categoria = document.getElementById("categoria1").value;


        if (!validarVazio(descricao)) {
            alert('Campo descricao deve ser informado.')
            return false;
        }

        if (!validarCampoMaior(descricao, 50)) {
            alert('Campo descrição atingiu o limite de 50 caracteres.');
            return false;
        }

        if (categoria < 1) {
            alert('O campo categoria deve ser informado.');
            return false;
        }

        if (!validarVazio(detalhes)) {
            alert('Campo detalhes deve ser informado.')
            return false;
        }

        if (!validarCampoMaior(detalhes, 1000)) {
            alert('Campo detalhes atingiu o limite de 1000 caracteres.');
            return false;
        }

        if (!validarVazio(valor)) {
            alert('Campo valor deve ser informado.')
            return false;
        }

    }


    function validarCadastroUsuario() {
        var apelido = document.getElementById('apelido2').value;
        var senha = document.getElementById('senha2').value;
        var email = document.getElementById('email2').value;

        if (!validarVazio(apelido)) {
            alert('Campo apelido é obrigatorio');
            return false;
        }
        if (!validarVazio(senha)) {
            alert('Campo senha é obrigatorio');
            return false;
        }

        if (!validarVazio(email)) {
            alert('Campo E-mail é obrigatorio');
            return false;
        }

        if (!validarCampoMaior(email, 100)) {
            alert('A campo Email não pode ter mais que 100 caracteres');
            return false;
        }

        if (!validarCampoMaior(senha, 64)) {
            alert('O campo senha não pode ter mais que 64 caracteres');
            return false;
        }

        if (!validarCampoMaior(apelido, 50)) {
            alert('O campo Apelido não pode ter mais de 50 carecteres');
            return false;
        }

        if (!validarTamanho(apelido, 8)) {
            alert('O campo apelido deve ter no minimo 8 caracteres');
            return false;
        }
        if (!validarTamanho(senha, 8)) {
            alert('Senha deve ter no minimo 8 caracteres');
            return false;
        }

        if (!validarTamanho(email, 10)) {
            alert('E-mail deve ter no minimo 10 caracteres');
            return false;
        }
        return true;
    }

</script>
