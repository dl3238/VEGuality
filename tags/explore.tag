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
      <div class="explore bg row vertically-centered space-around">
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
          <h3><a href="https://www.panchovegano.com/" target="_blank">Pancho's Vegan Tacos</a></h3>
          <p>Taste great Mexican Food without any regrets and no trans fats!</p>
        </div>
        <div class="content">
          <img src="/assets/r2.jpg" height="250px" width="280px">
          <h3><a href="http://www.hangawirestaurant.com/" target="_blank">Hangawi</a></h3>
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
          <h3><a href="https://www.hiraethcollective.com/" target="_blank">Hiraeth</a></h3>
          <p>Vegan label brand was created to serve a new generation of conscious women who value quality and design but do not want to compromise on their ethical beliefs.</p>
        </div>
        <div class="content">
          <img src="/assets/f2.jpg" height="250px" width="280px">
          <h3><a href="https://www.timeivchange.com.au/" target="_blank">Time IV Change</a></h3>
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
          <h3><a href="https://www.veganfoodandliving.com/vegans-guide-berlin/" target="_blank">Berlin, Germany</a></h3>
          <p>Rated the World's Most Vegan-Friendly City. Click here to find out why!</p>
        </div>
        <div class="content">
          <img src="/assets/nyc.jpg" height="250px" width="280px">
          <h3><a href="https://www.veganfoodandliving.com/vegans-guide-new-york-city/" target="_blank">New York, New York</a></h3>
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
          <h3><a href="http://eatupnewyork.com/seed-market-vegan-experience-nyc/" target="_blank">The Seed NYC Market</a></h3>
          <p>A place that brings together the best local plant-based and cruelty-free businesses + renowned doctors, nutritionists and inspirational professional athletes share their expertise!</p>
        </div>
        <div class="content">
          <img src="/assets/e2.jpg" height="250px" width="280px">
          <h3><a href="https://www.vegevents.com/events/ube-kitchen-filipino-vegan-kamayan-feast/" target="_blank">Vegan Kamayan Feast</a></h3>
          <p>A one-of-a-kind vegan filipino feast on banana leaves, to eat delicious food and connect with new people! It will feature an array of meat alternatives from exotic mushroom varieties. YUM!</p>
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
