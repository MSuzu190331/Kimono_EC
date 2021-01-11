<template>
  <div id="app">
    <div id="header">
      <nav class="navbar navbar-expand-lg">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav m-auto w-100 nav-justified">
            <li class="nav-item">
              <a class="nav-link" href="#">着物</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">すゞき呉服店の歴史</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">染色の技術</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">アクセス</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">お問い合わせ</a>
            </li>
          </ul>
        </div>
        <form class="form-inline my-2 my-lg-0 pl-5">
          <input class="form-control mr-sm-2" type="search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">検索</button>
        </form>
      </nav>
    </div>
    <div class="top-image">
      <img src="/images/top.jpg" alt="">
    </div>
    <div class="logo-image">
      <img src="/images/brand-logo.png" alt="">
    </div>
    <div class="col-sm-8 greeting-contents">
      <h3>ようこそ、すゞき呉服屋オンラインストアへ</h3><br>
      当サイトは、100年の歴史を誇る すゞき が展開する
      すゞき呉服店のきもの公式通販サイトです。<br>
      是非、お買い物をお楽しみください。
    </div>

    <div class="row">
      <div class="col ml-5">
        <h4 class="history-title">ブランドの歴史</h4>
        <div class="history-contents">
          ブランドの歴史に関するテキストブランドの歴史に関するテキスト
          ブランドの歴史に関するテキストブランドの歴史に関するテキストブランドの歴史に関するテキストブランドの歴史に関するテキストブランドの歴史に関するテキストブランドの歴史に関するテキストブランドの歴史に関するテキスト
        </div>
      </div>
      <div class="col history-image mr-5">
        <img src="/images/history.jpg" alt="">
      </div>
    </div>

    <div class="row">
      <div class="col art-image ml-5">
        <img src="/images/art.jpg" alt="">
      </div>
      <div class="col mr-5">
        <h4 class="art-title">染色技術</h4>
        <div class="art-contents">
          染色技術の説明テキスト染色技術の説明テキスト染色技術の説明テキスト
          染色技術の説明テキスト染色技術の説明テキスト染色技術の説明テキスト染色技術の説明テキスト<br>
          染色技術の説明テキスト染色技術の説明テキスト染色技術の説明テキスト染色技術の説明テキスト
        </div>
      </div>
    </div>

    <div class="row">
      <div id="posts">
        <div v-for="post in posts" :key="post.id" class="col">
          {{ post.name }}
          {{ post.detail }}
          {{ post.price }}
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data: function () {
    return {
      posts: []
    }
  },
  mounted () {
    axios
      .get('/api/v1/posts.json')
      .then(response => (this.posts = response.data))
  }
}
</script>

<style scoped>
#app{
  position: relative;
}

p {
  font-size: 2em;
  text-align: center;
}

/* ヘッダー */
.navbar{
  background-color: black;
  opacity: 0.7;
  position: absolute;
  width: 100%;
}

.navbar a{
  color: white;
}

button {
  color: white;
  border-color: white;
}

.top-image img{
  width: 100%;
}

/* コンテンツ */
.logo-image{
  text-align: center;
}

.logo-image img{
  width: 200px;
}

.greeting-contents{
  height: 200px;
  width: 70%;
  margin: 30px auto;
  text-align: center;
  padding: auto 0;
}

.row{
  margin: 50px 10px;
  text-align: center;
}

</style>
