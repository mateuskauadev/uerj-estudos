const selectNivel = document.getElementById('select-nivel');
const btnLerVoz = document.getElementById('btn-ler-voz');
const btnExplicar = document.getElementById('btn-explicar');
const btnOrientar = document.getElementById('btn-orientar');

// --- TROCA DE NÍVEIS E APLICAÇÃO DE REGRAS DE ACESSIBILIDADE ---
selectNivel.addEventListener('change', (e) => {
  const nivel = parseInt(e.target.value);

  // Limpa adaptações e interrompe áudio anterior
  document.body.classList.remove('ew-modo-facil', 'ew-limpar-distracao');
  pararLeituraVoz();

  if (nivel === 1) {
    document.body.classList.add('ew-modo-facil');
    alert("Nível 1 Ativado: Propagandas removidas, textos e títulos ampliados.");
  } 
  else if (nivel === 2) {
    document.body.classList.add('ew-modo-facil', 'ew-limpar-distracao');
    alert("Nível 2 Ativado: Removidas propagandas e barra lateral + Leitor por voz habilitado.");
  } 
  else if (nivel === 3) {
    document.body.classList.add('ew-modo-facil', 'ew-limpar-distracao');
    alert("Nível 3 Ativado: Interface limpa + Assistência inteligente por IA liberada.");
  }
});


// --- LEITOR DE VOZ COM CONTROLE COMPLETO (INICIAR / PARAR) ---
btnLerVoz.addEventListener('click', () => {
  if (!('speechSynthesis' in window)) {
    alert("Seu navegador não possui suporte para leitura de voz.");
    return;
  }

  // SE JÁ ESTIVER LENDO: Interrompe o áudio imediatamente
  if (window.speechSynthesis.speaking) {
    pararLeituraVoz();
  } 
  // SE ESTIVER PARADO: Inicia a leitura do conteúdo
  else {
    const textoNoticia = document.querySelector('.materia-principal').innerText;
    
    const fala = new SpeechSynthesisUtterance(textoNoticia);
    fala.lang = 'pt-BR';
    fala.rate = 0.85; // Velocidade reduzida para idosos

    // Quando a leitura finalizar sozinha, restaura o botão
    fala.onend = () => {
      resetarBotaoVoz();
    };

    window.speechSynthesis.speak(fala);

    // Altera o visual do botão para indicação de Parada
    btnLerVoz.innerText = "⏹️ Parar Leitura";
    btnLerVoz.style.backgroundColor = "#c4170c"; // Cor vermelha de interrupção
  }
});

// Função auxiliar para cancelar a fala na Web Speech API
function pararLeituraVoz() {
  if ('speechSynthesis' in window) {
    window.speechSynthesis.cancel();
  }
  resetarBotaoVoz();
}

function resetarBotaoVoz() {
  btnLerVoz.innerText = " Ler Notícia";
  btnLerVoz.style.backgroundColor = "#2b6cb0"; // Cor azul padrão
}


// --- RECURSOS SIMULADOS DE INTELIGÊNCIA ARTIFICIAL ---

// Botão "Resumo IA" (Explicar Notícia)
btnExplicar.addEventListener('click', () => {
  alert(
    " RESUMO DA IA (EASYWEB):\n\n" +
    "• O que mudou: O governo confirmou novas regras para aumentar o valor da aposentadoria do INSS.\n" +
    "• Quem recebe: Mais de 30 milhões de aposentados e pensionistas.\n" +
    "• Como saber o valor: Você poderá consultar no aplicativo 'Meu INSS' ou ligando para o número 135."
  );
});

// Botão "O que eu faço?" (Orientação Cognitiva)
btnOrientar.addEventListener('click', () => {
  alert(
    " PASSO A PASSO DA TAREFA (EASYWEB):\n\n" +
    "1. Esta página é uma notícia de jornal.\n" +
    "2. Para ler o texto completo, role a tela para baixo.\n" +
    "3. Se preferir ouvir em voz alta, clique no botão azul ' Ler Notícia' no topo."
  );
});