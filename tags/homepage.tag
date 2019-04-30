<homepage>
  <head>
    <meta charset="utf-8">

    <title>VEGuality</title>

    <link rel="stylesheet" href="css/styles.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
  </head>

  <body class="no-margin">
    <nav class="row centered">
      <div class="logo">
        <img style="margin-top:20px;width:30%;" src="assets/logo.png"/>
      </div>
      <div style="padding-top:20px;" class="links row vertically-centered">
        <a class="row vertically-centered" href="HTML/switch.html">SWITCH</a>
        <a class="row vertically-centered" href="HTML/cook.html">COOK</a>
        <a class="row vertically-centered" href="HTML/explore.html">EXPLORE</a>
        <a class="row vertically-centered" href="HTML/inspire.html">INSPIRE</a>
        <a class="row vertically-centered" href="HTML/connect.html">CONNECT</a>
      </div>
      <div style="margin-top:20px;" show={ !user } class="button call-to-action rounded green" onclick={ login }>Join the Community</div>
      <div style="margin-top:20px;" show={ user } class="button call-to-action rounded green" onclick={ logout }>Logout</div>
      <a href="HTML/profile.html"><div style="margin-left:10px;margin-top:20px;" show={ user } class="button call-to-action rounded green">Profile</div></a>

    </nav>
    <div class="header">
      <div class="homepage bg row vertically-centered space-around">
        <div class="overlay column centered">
          <h5>FEEL WONDERFUL. LOOK GREAT.</h5>
          <h1>The road to a better start on your plate.</h1>
        </div>
      </div>
    </div>
    <!-- first row -->
    <div class="section column centered">
      <div class="row vertically-centered space-around">
        <!-- Card 1 -->
        <div class="card1 overlapped">
          <div class="top">
            <img src="assets/mpv1.jpg" height="300px" width="300px">
          </div>
          <div class="bottom">
            <div class="description">
              <h2>Switch</h2>
              <p>Want to know more about veganism, the myths, tips to talk to family and friends, and how to be maintain a plant-based life? Here's how!</p>
              <div class="button call-to-action pink">
                Show Me
                <i class="material-icons">
                  keyboard_arrow_right
                </i>
              </div>
            </div>
          </div>
        </div>
        <!-- Card 2 -->
        <div class="card1 overlapped">
          <div class="top">
            <img src="assets/mpv2.jpg" height="300px" width="300px">
          </div>
          <div class="bottom">
            <div class="description">
              <h2>Cook</h2>
              <p>Mouthwatering meat-free meals are easy to cook. Check out the meals and create your own grocery list.</p>
              <div class="button call-to-action pink">
                Show Me
                <i class="material-icons">
                  keyboard_arrow_right
                </i>
              </div>
            </div>
          </div>
        </div>
        <!-- Card 3 -->
        <div class="card1 overlapped">
          <div class="top">
            <img src="assets/mpv3.png" height="300px" width="300px">
          </div>
          <div class="bottom">
            <div class="description">
              <h2>Explore</h2>
              <p>Vegans are everywhere! Check out restaurants to dine, fashion to wear, cities to visit, and movements to follow and empower.</p>
              <div class="button call-to-action pink">
                Show Me
                <i class="material-icons">
                  keyboard_arrow_right
                </i>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- second row -->
      <div class="row vertically-centered space-around">
        <!-- Card 1 -->
        <div class="card1 overlapped">
          <div class="top">
            <img src="assets/mpv4.png" height="300px" width="300px">
          </div>
          <div class="bottom">
            <div class="description">
              <h2>Inspire</h2>
              <p>You are NOT alone. Read their stories and be amazed of what they have learned about themselves and their identities. Have confidence to post your own story!</p>
              <div class="button call-to-action pink">
                Show Me
                <i class="material-icons">
                  keyboard_arrow_right
                </i>
              </div>
            </div>
          </div>
        </div>
        <!-- Card 2 -->
        <div class="card1 overlapped">
          <div class="top">
            <img src="assets/mpv5.png" height="300px" width="300px">
          </div>
          <div class="bottom">
            <div class="description">
              <h2>Connect</h2>
              <p>Link with other people! It's good for the soul. Click here to see what other vegans had to say, and post your own if you feel up to the task!</p>
              <div class="button call-to-action pink">
                Show Me
                <i class="material-icons">
                  keyboard_arrow_right
                </i>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>

</html>

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

</homepage>
