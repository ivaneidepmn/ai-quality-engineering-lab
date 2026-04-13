# =========================
# Criar .gitignore
# =========================
@'
.venv/
__pycache__/
.pytest_cache/
.env
'@ | Set-Content -Encoding UTF8 .gitignore


# =========================
# Criar README.md
# =========================
@'
# 🚀 AI Quality Engineering Lab

Projeto prático de Quality Engineering com foco em automação de testes, APIs e integração com IA.

---

## 🎯 Objetivo
Demonstrar habilidades em testes automatizados, validação de APIs e preparação para cenários de QA com IA.

---

## 🧠 Tecnologias
- Python 3.13
- Pytest
- Requests
- Python-dotenv
- OpenAI

---

## 🧪 O que está sendo testado
- Status code de APIs
- Estrutura de resposta
- Contrato de dados

---

## 📁 Estrutura do Projeto

tests/  -> testes automatizados  
src/    -> integrações e lógica  
docs/   -> documentação  

---

## ▶️ Como executar

python -m venv .venv  
.\.venv\Scripts\Activate.ps1  
python -m pip install -r requirements.txt  
pytest  

---

## 🚀 Próximos passos
- Testes com IA (LLM testing)
- Integração com Azure AI Foundry
- Pipeline CI/CD
- Testes E2E

---

💡 Projeto desenvolvido para evolução em QA Sênior com foco em IA.
'@ | Set-Content -Encoding UTF8 README.md


# =========================
# Ajustar requirements
# =========================
python -m pip freeze | Out-File -Encoding utf8 requirements.txt


# =========================
# Git init (se ainda não tiver)
# =========================
git init

# =========================
# Commit inicial
# =========================
git add .
git commit -m "feat: initial QA AI project with tests and structure"

# =========================
# Branch main
# =========================
git branch -M main

# =========================
# Push (se já tiver remote)
# =========================
git push -u origin main