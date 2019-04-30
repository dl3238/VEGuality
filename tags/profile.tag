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
        <a class="row vertically-centered" href="explore.html">EXPLORE</a>
        <a class="row vertically-centered" href="inspire.html">INSPIRE</a>
        <a class="row vertically-centered" href="connect.html">CONNECT</a>
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
              <h5 class="card-title">Kalen Venus</h5>
              <p class="card-text">Reading the stories on the site, I became inspired to share my story.</p>

              <!-- <p class="card-text">Reading the stories on the site, I became inspired to share my story. I come from a family that enjoys eating meat and wearing fur. I never felt I could identify with my family members, but I had to live a life to feel belonged and not judged. For most of my life, I felt alone and not supported. It was not until my freshman year of high school when I realized there were people like me who did not believe in animal cruelty in all facets of their lives. I confided in my teacher how I was feeling, and she recommended me to go to a Vegan festival right here in my city. When I went, my life changed and my values were reinforced. I no longer wanted to live a lie and wanted to openly be a part of this movement. At the festival, I got the opportunity to sample amazing vegan food, make new friends, and listen to some of the vegan world’s most prominent speakers. I am slowly transitiong, and my parents are still processing it...heck, I am still processing it, but I know I am making the right decision for myself. I hope you follow me on my vegan journey.</p> -->
              <a href="#">Edit profile</a>
            </div>
          </div>
          <!--Tab Bar-->
          <div style="margin-right:;margin-top:20px; border:solid; border-color:#1abc9c; border-width:1px;border-radius:1rem;"class="">
            <ul class="nav nav-list">
              <li><a href="#" onclick={ myList }>My grocery list</a> </li>
              <li><a href="#" onclick={ myQuestions }>My questions</a> </li>
              <li><a href="#" onclick={ myStories }>My stories</a> </li>
            </ul>
          </div>
        </div>

        <div style="margin-left:100px;"class="col-8">

          <grocery-list if = { mode === "grocery" } show = { user }></grocery-list>
          <my-questions if = {mode === "questions"} show = { user }></my-questions>


        </div>





      </div>

    </div>
  </body>

  <script>

    this.mode = "";

    myList() {
      this.mode = "grocery";
    };

    myQuestions() {
      this.mode = "questions";
    }

    // myStories() {
    //   this.mode = "stories";
    // }

    //login
    login() {
      var provider = new firebase.auth.GoogleAuthProvider();
      firebase.auth().signInWithPopup(provider);
    };
    //logout
    logout() {
      firebase.auth().signOut();
      localStorage.removeItem('userKey');
    };
    //change view of buttons
    firebase.auth().onAuthStateChanged(userObj => {
      if (userObj) {
        this.user = userObj;
        console.log(this.user);
        let userKey = firebase.auth().currentUser.uid;
        localStorage.setItem('userKey', userKey);
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
