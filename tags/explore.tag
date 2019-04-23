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
        <img style="margin-top:20px;width:30%;" src="/assets/logo.png"/>
      </div>
      <div class="links row vertically-centered">
        <a class="row vertically-centered" href="#">SWITCH</a>
        <a class="row vertically-centered" href="#">COOK</a>
        <a class="row vertically-centered" href="#">EXPLORE</a>
        <a class="row vertically-centered" href="#">INSPIRE</a>
        <a class="row vertically-centered" href="#">LAUGH</a>
      </div>
      <div style="margin-top:20px;" show={ !user } class="button call-to-action rounded green" onclick={ login }>Join the Community</div>
      <div style="margin-top:20px;" show={ user } class="button call-to-action rounded green" onclick={ logout }>Logout</div>
      <div style="margin-top:20px;" class="button">
        <i class="material-icons">
          shopping_cart
        </i>
      </div>
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
          <h3></h3>
          <p></p>
        </div>
        <div class="content">
          <img src="/assets/r2.jpg" height="250px" width="280px">
          <h3></h3>
          <p></p>
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
          <h3></h3>
          <p></p>
        </div>
        <div class="content">
          <img src="/assets/f2.jpg" height="250px" width="280px">
          <h3></h3>
          <p></p>
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
          <h3></h3>
          <p></p>
        </div>
        <div class="content">
          <img src="/assets/nyc.jpg" height="250px" width="280px">
          <h3></h3>
          <p></p>
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
          <h3></h3>
          <p></p>
        </div>
        <div class="content">
          <img src="/assets/e2.jpg" height="250px" width="280px">
          <h3></h3>
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
  </explore>
