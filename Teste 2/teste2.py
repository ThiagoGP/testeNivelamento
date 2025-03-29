import pdfplumber
import pandas as pd
import shutil


pdf_file_path = r"../downloads/Anexo_I_Rol_2021RN_465.2021_RN627L.2024.pdf"
csv_file_path = "tabela_ROL.csv"
zip_file_path = "Teste_ThiagoVitorGomesPereira"  
tables = []


with pdfplumber.open(pdf_file_path) as pdf:
    for page in pdf.pages:

        table = page.extract_table()
        if table:
            tables.append(pd.DataFrame(table[1:], columns=table[0]))


df = pd.concat(tables, ignore_index=True)

df.rename(columns={"OD": "Seg. Odontológica", "AMB": "Seg. Ambulatorial"}, inplace=True)

df.to_csv(csv_file_path, index=False, encoding="utf-8")

shutil.make_archive(zip_file_path, 'zip', '.', csv_file_path)


print(f"CSV file successfully compressed into: {zip_file_path}")
