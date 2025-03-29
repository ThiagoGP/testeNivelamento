from flask import Flask, request, jsonify
from flask_cors import CORS  
import pandas as pd

app = Flask(__name__)
CORS(app)  # Permite que o Flask aceite requisições de outras origens 


df = pd.read_csv("../arquivos/Relatorio_cadop.csv", encoding="utf-8", delimiter=";")

@app.route("/buscar", methods=["GET"])
def buscar_operadora():
    nome = request.args.get("nome", "").strip()
    if len(nome) < 3:
        return jsonify({"erro": "Digite pelo menos 3 caracteres."}), 400

    resultados = df[df["Razao_Social"].str.contains(nome, case=False, na=False)]
    return jsonify(resultados.to_dict(orient="records"))

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=5000)
