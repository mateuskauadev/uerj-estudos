const selectNivel = document.getElementById('select-nivel');
const btnLerVoz = document.getElementById('btn-ler-voz');
const btnExplicar = document.getElementById('btn-explicar');
const btnOrientar = document.getElementById('btn-orientar');

// Gerenciamento dos Níveis de Ajuda
selectNivel.addEventListener('change', (e) => {
  const nivel = parseInt(e.target.value);

  document.body.classList.remove('ew-modo-facil', 'ew-limpar-distracao');
  window.speechSynthesis.cancel();

  if (nivel === 1) {
    document.body.classList.add('ew-modo-facil');
    alert("Nível 1: Texto e títulos ampliados para facilitar a leitura.");
  } 
  else if (nivel === 2) {
    document.body.classList.add('ew-modo-facil', 'ew-limpar-distracao');
    alert("Nível 2: Limpeza de distrações/anúncios + Leitor de Voz ativado.");
  } 
  else if (nivel === 3) {
    document.body.classList.add('ew-modo-facil', 'ew-limpar-distracao');
    alert("Nível 3: Assistência total ativada com Resumo por IA.");
  }
});

// Leitura em Voz Alta (Web Speech API)
btnLerVoz.addEventListener('click', () => {
  if ('speechSynthesis' in window) {
    window.speechSynthesis.cancel();

    // Seleciona o texto da notícia para ler em voz alta
    const textoNoticia = document.querySelector('.materia-principal').innerText;
    
    const fala = new SpeechSynthesisUtterance(textoNoticia);
    fala.lang = 'pt-BR';
    fala.rate = 0.85; // Velocidade mais calma para idosos
    
    window.speechSynthesis.speak(fala);
  } else {
    alert("Navegador sem suporte para leitura de voz.");
  }
});

// Função "Explicar / Resumir Página" da IA (Simplificação de Notícia)
btnExplicar.addEventListener('click', () => {
  alert(
    "🤖 RESUMO SIMPLIFICADO DA IA (EASYWEB):\n\n" +
    "• O que aconteceu: O governo aprovou novas regras de reajuste para a aposentadoria do INSS.\n" +
    "• Quem é afetado: Mais de 30 milhões de aposentados e pensionistas.\n" +
    "• O que fazer: Você poderá consultar o novo valor no seu aplicativo ou por telefone na semana que vem."
  );
});

// Função "O que eu faço?" da IA
btnOrientar.addEventListener('click', () => {
  alert(
    "🤖 ORIENTAÇÃO DA IA (EASYWEB):\n\n" +
    "Esta é uma matéria de notícia.\n" +
    "• Para ler: Role a página para baixo com o mouse.\n" +
    "• Para ouvir: Clique no botão '🔊 Ler Notícia' no topo para que o navegador leia o texto para você."
  );
});