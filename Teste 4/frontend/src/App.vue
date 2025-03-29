<template>
  <div>
    <h1>Busca de Operadoras</h1>
    <input v-model="busca" placeholder="Digite o nome da operadora" />
    <button @click="pesquisar">Buscar</button>

    <ul>
      <li v-for="(razao_social, index) in razoes_social" :key="index">
        {{ razao_social }}
      </li>
    </ul>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      busca: "",
      razoes_social: [], 
    };
  },
  methods: {
    async pesquisar() {
      try {
        const response = await axios.get(
          `http://localhost:5000/buscar?nome=${this.busca}`
        );

        console.log(response.data);
        const jsonString = response.data.replace(/NaN/g, "null");
        const data = JSON.parse(jsonString);
        this.razoes_social = data.map(item => item.Razao_Social);
        console.log(this.razoes_social); 
      } catch (error) {
        console.error("Erro ao buscar os dados:", error);
      }
    },
  },
};
</script>
