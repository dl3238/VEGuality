<explore>
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
      <div class="links row vertically-centered">
        <a class="row vertically-centered" href="switch.html">SWITCH</a>
        <a class="row vertically-centered" href="cook.html">COOK</a>
        <a class="row vertically-centered" href="#">EXPLORE</a>
        <a class="row vertically-centered" href="inspire.html">INSPIRE</a>
        <a class="row vertically-centered" href="connect.html">CONNECT</a>
      </div>
      <div style="margin-top:20px;" show={ !user } class="button call-to-action rounded green" onclick={ login }>Join the Community</div>
      <div style="margin-top:20px;" show={ user } class="button call-to-action rounded green" onclick={ logout }>Logout</div>
      <a href="profile.html"><div style="margin-left:10px;margin-top:20px;" show={ user } class="button call-to-action rounded green">Profile</div></a>

    </nav>
    <div class="header">
      <div class="home bg row vertically-centered space-around">
        <div class="overlay column centered">
          <h5>VEGANISM IS NOT A DIET</h5>
          <h1>Be kind to all kinds.</h1>
        </div>
      </div>
    </div>
    <div class="section column centered">
      <h1>Dining Out</h1>
      <p>Delicious plant-based options are easier to find than ever. International restaurants are particularly great places to find tasty meat-free dishes.</p>
      <div class="carousel row centered" id="carousel-switch-1">
        <div class="left arrow row centered" onclick="changeSlide1(-1)">
          <i class="material-icons">
            keyboard_arrow_left
          </i>
        </div>
        <div class="content">
          <img src="/assets/r1.jpg" height="250px" width="280px">
          <h3>Pancho's Vegan Tacos</h3>
          <p>Taste great Mexican Food without any regrets, no trans fats, great sources of plant base proteins and delicious authentic flavors!</p>
        </div>
        <div class="content">
          <img src="/assets/r2.jpg" height="250px" width="280px">
          <h3>Hangawi</h3>
          <p>Enjoy a Korean vegan restaurant serving healthy, often light but filling dishes.</p>
        </div>
        <div class="right arrow row centered" onclick="changeSlide1(1)">
          <i class="material-icons">
            keyboard_arrow_right
          </i>
        </div>
      </div>
    </div>
    <div class="section column centered">
      <h1>Walking the Runway</h1>
      <p>Style isn't worn. It's embodied. Cruelty free is the new luxury, ethical the new black.</p>
      <div class="carousel row centered" id="carousel-switch-1">
        <div class="left arrow row centered" onclick="changeSlide1(-1)">
          <i class="material-icons">
            keyboard_arrow_left
          </i>
        </div>
        <div class="content">
          <img src="/assets/f1.jpeg" height="250px" width="280px">
          <h3>Hiraeth</h3>
          <p>Vegan label brand was created to serve a new generation of conscious women who value quality and design but do not want to compromise on their ethical beliefs.</p>
        </div>
        <div class="content">
          <img src="/assets/f2.jpg" height="250px" width="280px">
          <h3>Time IV Change</h3>
          <p>TIVC has a collection of classic-style handcrafted vegan watches, in which their timepieces are cruelty-free and Peta-approved!</p>
        </div>
        <div class="right arrow row centered" onclick="changeSlide1(1)">
          <i class="material-icons">
            keyboard_arrow_right
          </i>
        </div>
      </div>
    </div>
    <div class="section column centered">
      <h1>Vegan Friendly Cities</h1>
      <p>So much of who we are is where we have been.</p>
      <div class="carousel row centered" id="carousel-switch-1">
        <div class="left arrow row centered" onclick="changeSlide1(-1)">
          <i class="material-icons">
            keyboard_arrow_left
          </i>
        </div>
        <div class="content">
          <img src="/assets/berlin.jpeg" height="250px" width="280px">
          <h3>Berlin, Germany</h3>
          <p>Rated the World's Most Vegan-Friendly City. Click here to find out why!</p>
        </div>
        <div class="content">
          <img src="/assets/nyc.jpg" height="250px" width="280px">
          <h3>New York, New York</h3>
          <p>A city that never sleeps! Find out why vegan-style!</p>
        </div>
        <div class="right arrow row centered" onclick="changeSlide1(1)">
          <i class="material-icons">
            keyboard_arrow_right
          </i>
        </div>
      </div>
    </div>
    <div class="section column centered">
      <h1>Get Connected!</h1>
      <p>Join the community and ask questions, share advice and get tips on plant-based eating.  </p>
      <div class="carousel row centered" id="carousel-switch-1">
        <div class="left arrow row centered" onclick="changeSlide1(-1)">
          <i class="material-icons">
            keyboard_arrow_left
          </i>
        </div>
        <div class="content">
          <img src="/assets/e1.jpeg" height="250px" width="280px">
          <h3>The Seed NYC Market</h3>
          <p></p>
        </div>
        <div class="content">
          <img src="/assets/e2.jpg" height="250px" width="280px">
          <h3>Vegan Kamayan Feast</h3>
          <p></p>
        </div>
        <div class="right arrow row centered" onclick="changeSlide1(1)">
          <i class="material-icons">
            keyboard_arrow_right
          </i>
        </div>
      </div>
    </div>
    //text area here Tips from the community.


  <script>
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

</explore>
