// --- LÓGICA DE ATIVAÇÃO DOS NÍVEIS E RECURSOS DO EASYWEB ---

const selectNivel = document.getElementById('select-nivel');
const btnLerVoz = document.getElementById('btn-ler-voz');
const btnExplicar = document.getElementById('btn-explicar');
const btnOrientar = document.getElementById('btn-orientar');

// Gerencia a troca de níveis no Painel de Controle
selectNivel.addEventListener('change', (e) => {
  const nivel = parseInt(e.target.value);

  // Limpa estados anteriores
  document.body.classList.remove('ew-modo-facil', 'ew-limpar-distrações');
  window.speechSynthesis.cancel(); // Interrompe leituras de voz em andamento

  if (nivel === 1) {
    // Nível 1: Ajuste Visual Básico
    document.body.classList.add('ew-modo-facil');
    alert("Nível 1 Ativado: Aumento de fontes, botões e espaçamento visuais.");
  } 
  else if (nivel === 2) {
    // Nível 2: Ajuste Visual + Ocultar Distrações
    document.body.classList.add('ew-modo-facil', 'ew-limpar-distrações');
    alert("Nível 2 Ativado: Interface simplificada sem distrações visuais + Leitor de Voz disponível.");
  } 
  else if (nivel === 3) {
    // Nível 3: Ajuste Completo + Assistência por IA
    document.body.classList.add('ew-modo-facil', 'ew-limpar-distrações');
    alert("Nível 3 Ativado: Assistência total com orientação por Inteligência Artificial habilitada.");
  }
});

// --- LEITOR DE VOZ (UTILIZANDO A WEB SPEECH API NATIVA) ---
btnLerVoz.addEventListener('click', () => {
  if ('speechSynthesis' in window) {
    window.speechSynthesis.cancel();

    // Seleciona o texto principal da página para leitura
    const textoParaLer = document.querySelector('.conteudo-principal').innerText;
    
    const fala = new SpeechSynthesisUtterance(textoParaLer);
    fala.lang = 'pt-BR';
    fala.rate = 0.85; // Velocidade levemente reduzida para facilitação da escuta
    
    window.speechSynthesis.speak(fala);
  } else {
    alert("Seu navegador não possui suporte para o leitor de voz.");
  }
});

// --- SIMULAÇÃO DAS FUNÇÕES DE INTELIGÊNCIA ARTIFICIAL ---

// Botão "Explicar esta Página" (Simplificação de conteúdo)
btnExplicar.addEventListener('click', () => {
  alert(
    "🤖 EXPLICAÇÃO DA IA (EASYWEB):\n\n" +
    "Esta página pertence ao Posto de Saúde Central. " +
    "Ela serve para você solicitar a marcação de uma consulta com um médico sem precisar sair de casa."
  );
});

// Botão "O que eu faço?" (Orientação passo a passo da tarefa)
btnOrientar.addEventListener('click', () => {
  alert(
    "🤖 PASSO A PASSO DA TAREFA (EASYWEB):\n\n" +
    "1. Digite os números do seu CPF no primeiro campo de texto.\n" +
    "2. Escolha o tipo de médico que você precisa na caixa de seleção.\n" +
    "3. Escolha a data em que deseja ser atendido.\n" +
    "4. Clique no botão verde 'CONFIRMAR AGENDAMENTO' para finalizar."
  );
});