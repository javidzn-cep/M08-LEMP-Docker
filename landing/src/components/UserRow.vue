<template>
    <tr>
        <td>{{ this.user.id }}</td>
        <td>{{ fullname }}</td>
        <td>{{ this.user.edad }}</td>
        <td>{{ this.user.email }}</td>
        <td>{{ this.user.fecha_nacimiento }}</td>
    </tr>
  </template>
  
  <script>
  export default {
    name: 'UserRow',  
    props:{
        user: Object
    },
    computed: {
        fullname(){
            return `${this.user.nombre} ${this.user.apellido}`
        }
    },
  }
  </script>
  
  <style></style>