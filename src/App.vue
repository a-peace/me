<template>
  <img id="avatar" alt="my avatar" src="./assets/avatar.png">
  <p>Автор картинки <a href="https://twitter.com/SH0R0KEN" class="ref">@SH0R0KEN</a> </p>

  <p>Пока данный сайт Состоит из одной странички и не несет никакой информации и функционала </p>
  <p>Так что вот вам кнопка, чтобы развлечься</p>
  <button type="button" :class="classButton" @click="changeClass">Нажми на меня</button>

  <p>{{ count }}</p>
</template>

<script>
import 'bootstrap/dist/css/bootstrap.min.css';

export default {
  name: 'App',
  components: {
  },
  beforeMount() {
    this.classButton = this.listOfClasses[0]
  },
  data: function () {
    return {
      count: 0,
      listOfClasses: [
        "btn btn-primary", "btn btn-secondary", "btn btn-success",
        "btn btn-danger", "btn btn-warning", "btn btn-info",
        "btn btn-light", "btn btn-dark"
      ],
      classButton: "btn",
    };
  },
  methods: {
    changeClass() {
      const lenght = this.listOfClasses.length - 1;
      let index = this.listOfClasses.indexOf(this.classButton);

      if (lenght == index) index = -1;
      this.classButton = this.listOfClasses[index + 1];
      this.count += 1;
    },

  }
}
</script>

<style>
#app,
footer {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

.line-through {
  text-decoration: line-through;
}
</style>
