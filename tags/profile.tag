<profile>
  <!-- HTML -->
  <head>
    <meta charset="utf-8">

    <title>TITLE</title>

    <link rel="stylesheet" href="/css/styles.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">


  </head>

  <body class="no-margin">
    <nav class="row centered">
      <div class="logo">
        <a href="/"><img style="margin-top:20px;width:30%;" src="/assets/logo.png"/></a>

      </div>
      <div style="padding-top:20px;" class="links row vertically-centered">
        <a class="row vertically-centered" href="switch.html">SWITCH</a>
        <a class="row vertically-centered" href="cook.html">COOK</a>
        <a class="row vertically-centered" href="#">EXPLORE</a>
        <a class="row vertically-centered" href="#">INSPIRE</a>
        <a class="row vertically-centered" href="#">LAUGH</a>
      </div>
      <div style="margin-top:20px;" show={ !user } class="button call-to-action rounded green" onclick={ login }>Join the Community</div>
      <div style="margin-top:20px;" show={ user } class="button call-to-action rounded green" onclick={ logout }>Logout</div>
      <div style="margin-left:10px;margin-top:20px;" show={ user } class="button call-to-action rounded green" onclick={ }>Profile</div>
    </nav>

    <div style="margin-top:120px;" class="container">
      <div class="row">
        <div class="d-flex flex-column col-4">
          <div class="card" style="width: 20rem;">
            <img src="/assets/avatar.png" style="width:85%;" class="card-img-top" alt="avatar">
            <div class="card-body">
              <h5 class="card-title">John Smith</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="#">Edit profile</a>
            </div>
          </div>
          <!--Tab Bar-->
          <div style="margin-right:;margin-top:20px; border:solid; border-color:#1abc9c; border-width:1px;border-radius:1rem;"class="">
            <ul class="nav nav-list">
              <li><a href="#">My grocery list</a> </li>
              <li><a href="#">My posts</a> </li>
              <li><a href="#">My stories</a> </li>
            </ul>
          </div>
        </div>

        <div style="margin-left:100px;"class="col-8">
          <h1>123</h1>
          <grocery-list></grocery-list>

        </div>





      </div>

    </div>
  </body>

  <script>
    //login
    login() {
      var provider = new firebase.auth.GoogleAuthProvider();
      firebase.auth().signInWithPopup(provider);
    };
    //logout
    logout() {
      firebase.auth().signOut();
    };
    //change view of buttons
    firebase.auth().onAuthStateChanged(userObj => {
      if (userObj) {
        this.user = userObj;
      } else {
        this.user = null;
      }
      this.update();
    });
  </script>

  <style>
    /* CSS */
    :scope {}
    .special {
      background-color: #333333;
      color: #FFFFFF;
    }
  </style>
</profile>
