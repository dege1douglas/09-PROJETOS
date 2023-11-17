 // Função para adicionar a classe "active"
 function setActive(element) {
    // Remove a classe "active"
    var links = document.getElementsByTagName('a')
    for (var i = 0; i < links.length; i++) {
        links[i].classList.remove('active')
    }

    // Adiciona a classe "active"
    element.classList.add('active')
}

function openPopup() {
    document.getElementById('overlay').style.display = 'block';
    document.getElementById('popup').style.display = 'block';
}

function closePopup() {
    document.getElementById('overlay').style.display = 'none';
    document.getElementById('popup').style.display = 'none';
}

let tipoImagem = 1;
let imagemElement = document.getElementById('feedback-img')

// Atualiza a imagem com base no valor da variável tipoImagem
function atualizarImagem() {
    switch (tipoImagem) {
        case 1:
            imagemElement.src = 'pendente.png'
            document.getElementById("feedback").textContent = `Pendente.`
            break;
        case 2:
            imagemElement.src = 'recusado.png'
            document.getElementById("feedback").textContent = `Rescusado.`
            break;
        case 3:
            imagemElement.src = 'confirmado.png'
            document.getElementById("feedback").textContent = `Confirmado.`
            break;
        default:
            // Caso tipoImagem não seja nenhum dos casos acima
            imagemElement.src = 'pendente.png'
            document.getElementById("feedback").textContent = `Pendente.`
    }
}

atualizarImagem()