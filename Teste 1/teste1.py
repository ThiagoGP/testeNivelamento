import requests
from bs4 import BeautifulSoup
from urllib.parse import urljoin
import os
import shutil


BASE_URL = "https://www.gov.br/ans/pt-br/acesso-a-informacao/participacao-da-sociedade/atualizacao-do-rol-de-procedimentos"
DOWNLOAD_FOLDER = "../downloads"
ZIP_NAME = "anexos_compactados"
ARCHIVES = ["Anexo I", "Anexo II"]


response = requests.get(BASE_URL)
if response.status_code != 200:
    print(f"Erro ao acessar a página: {response.status_code}")
    exit()


soup = BeautifulSoup(response.text, "html.parser")
os.makedirs(DOWNLOAD_FOLDER, exist_ok=True) 

# Procura os links dos anexos
for link in soup.find_all("a"):
    link_text = link.text.strip()

    if any(anexo in link_text for anexo in ARCHIVES):
        file_url = link.get("href")


        if file_url and not file_url.startswith("http"):
            file_url = urljoin(BASE_URL, file_url)

        if not file_url.lower().endswith(".pdf"):
            print(f"Ignorado: {file_url} (não é um arquivo PDF)")
            continue

        file_name = file_url.split("/")[-1]


        try:
            file_response = requests.get(file_url, timeout=10)
            file_response.raise_for_status()
        except requests.exceptions.RequestException as e:
            print(f"Erro ao baixar {link_text} ({file_url}): {e}")
            continue 
        
        with open(os.path.join(DOWNLOAD_FOLDER, file_name), "wb") as file:
            file.write(file_response.content)

        print(f"Baixado: {file_name}")


shutil.make_archive(ZIP_NAME, "zip", DOWNLOAD_FOLDER)
print(f"Arquivos compactados em {ZIP_NAME}.zip")
