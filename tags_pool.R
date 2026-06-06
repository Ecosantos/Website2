# tags_pool.R
tags_data <- data.frame(
  nome = c("Ecologia", "Ciência de Dados", "Conservação", "Modelagem Ecológica", "Sensoriamento Remoto", "R Stats", "Biodiversidade"),
  link = c("","","","","","","") # Adicionar links para as tags aqui.
)

# Cria as tags HTML individuais
html_tags <- paste0(

# Comando abaixo transforma as tags com funcionais - usar quando os artigos e projetos estiverem podendo ser filtrados por tags.
  '<a href="', tags_data$link, '" class="badge bg-success bg-opacity-10 text-success p-2 fw-normal" style="font-size: 0.85rem; text-decoration: none;">', tags_data$nome, '</a>',
  collapse = " "
)

# Cria o bloco final completo
tags_html_final <- paste0(
  '<div class="d-flex flex-wrap gap-2 justify-content-center" style="margin-top: 0.5rem;">',
  html_tags,
  '</div>'
)