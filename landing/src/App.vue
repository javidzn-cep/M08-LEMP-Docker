<template>
  <div class="full-frame">

    <div class="container mt-5 text-center">
      <h1>Nuestros Usuarios</h1>
      <table class="table mt-5">
        <tr>
          <th>ID</th>
          <th>Nombre Completo</th>
          <th>Edad</th>
          <th>Correo</th>
          <th>Fecha de Nacimiento</th>
        </tr>
        <UserRow v-for="user in users" :user="user" :key="user.id"></UserRow>
      </table>
      <div v-if="loadingData" class="mt-5 container">
        <div class="spinner-border" role="status"></div>
      </div>
    </div>
  </div>
</template>

<script>
import UserRow from './components/UserRow.vue'
import axios from 'axios'

export default {
  name: 'App',
  components: {
    UserRow
  }, 
  data() {
    return {
      loadingData: true,
      users: []

    }
  },
  mounted(){
    const me = this
    axios.get('/api/users/')
    .then(result => me.users = result.data)
    .catch(error => console.error(error))
    .finally(() => this.loadingData = false)
  }
}
</script>

<style>
    body, html {
      margin: 0;
    }
    h1 {
      font-size: 50px;
      margin-bottom: 20px;
      text-align: center;
    }
    p {
      font-size: 20px;
      margin-bottom: 30px;
    }
    .full-frame{
      min-height: 100vh;
      width: 100vw;
      font-family: 'Arial', sans-serif;
      background-color: #f06d06;
      height: 100%;
      display: flex;
      color: white;
      flex-direction: column;
    }
    td{
      color: white !important;
      border-color: white !important;
      background-color: transparent !important;
    }
</style>