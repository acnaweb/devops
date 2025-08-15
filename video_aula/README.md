# Pacote de Roteiros DevOps (MD + PlantUML)
Este pacote contém os roteiros completos dos vídeos sobre DevOps no formato **Markdown** e os diagramas **PlantUML (.puml)** separados.

## Estrutura
- `roteiros/` – Arquivos `.md` (um por vídeo) com pontos-chave e texto de fala (dois parágrafos por parte).
- `diagramas/` – Arquivos `.puml` para renderização dos diagramas listados nos roteiros.

## Como usar
1. **Teleprompter**: abra os arquivos `.md` para leitura durante a gravação (cada parte dura ~4–6 min).
2. **Slides**: use os *Pontos‑chave* como tópicos; gere imagens a partir dos `.puml` (PlantUML) e insira nos slides.
3. **Estudos**: disponibilize os `.md` aos alunos; a estrutura *Problema → Discussão → Solução (com exemplos)* facilita revisão.

## Renderizar os `.puml`
- Instale PlantUML e Java, ou use uma extensão do VS Code/IntelliJ.
- Comando típico: `plantuml diagramas/*.puml` → gera PNG/SVG na mesma pasta.

## Próxima etapa
Na sua solicitação, podemos converter cada `.md` para `.docx` mantendo a estrutura.
