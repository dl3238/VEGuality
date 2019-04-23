<switch>
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
        <img href="./" style="margin-top:20px;width:30%;" src="/assets/logo.png"/>
      </div>
      <div class="links row vertically-centered">
        <a class="row vertically-centered" href="#">SWITCH</a>
        <a class="row vertically-centered" href="cook.html">COOK</a>
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
      <div class="home bg row centered">
        <div class="overlay column centered">
          <h1>Video about Veganism (intro)</h1>
          <div class="play button">
            <i class="material-icons">
              play_arrow
            </i>
          </div>
        </div>
      </div>
    </div>

    <div class="section column centered">
      <h1>Myths about Veganism/What is Veganism</h1>
      <p>Being vegan is a huge life decision that more and more people are making. But despite its growing popularity, there are still a lot of things about veganism people don't understand. If you're looking to understand veganism more, or if you're
        thinking about going vegan yourself, there are some key things you need to know about the lifestyle. To start, here are some myths about veganism that you need to stop believing.
      </p>
      <div class="carousel row centered" id="carousel-switch-1">
        <div class="left arrow row centered" onclick="changeSlide1(-1)">
          <i class="material-icons">
            keyboard_arrow_left
          </i>
        </div>
        <div class="content">
          <img src="/assets/m1.jpeg" height="250px" width="280px">
          <h3></h3>
          <p></p>
        </div>
        <div class="content">
          <img src="/assets/m2.jpeg" height="250px" width="280px">
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
      <h1>Tips for Talking to Family and Friends</h1>
      <p>So you’re cutting out or cutting back on meat, but your family and friends aren’t. How are they going to respond? Don’t worry, we’ve been there too! Here are some tips on how to keep things cool and make it easy on everyone—including yourself.</p>
    </div>
    <div class="section row no-padding centered">
      <div class="left">
        <h1>Make It Easy</h1>
        <p>Make your new diet as easy as possible on the chef of the house. Offer to help cook, and chow down on side dishes the whole family is having. You can also keep satisfying snacks around the house for when you need something quick, like microwave
          burritos, granola bars, canned soups, and nuts.</p>
      </div>
      <div class="right image-stacked">
        <img src="/assets/s1.jpg" height="200px" width="300px">
        <img src="/assets/s1p2.jpg" height="300px" width="300px">
      </div>
    </div>
    <div class="section row no-padding centered">
      <div class="left image-stacked">
        <img src="/assets/s2.jpg" height="200px" width="300px">
        <img src="/assets/s2p2.jpg" height="200px" width="300px">
      </div>
      <div class="right">
        <h1>Listen to Them</h1>
        <p>If they’re worried about your health or the cost of food, let them know you understand their concern. Share what you’ve learned about eating on a budget and getting proper nutrition.</p>
      </div>
    </div>
    <div class="section row no-padding centered">
      <div class="left">
        <h1>Be a Role Model</h1>
        <p>If you want your family and friends to see things the way you do, stay healthy and stay kind. Even if they don’t get it at first, in time they’ll realize how great what you’re doing is for you (not to mention the world).</p>
      </div>
      <div class="right image-stacked">
        <img src="/assets/s3.jpg" height="200px" width="300px">
        <img src="/assets/s3p2.jpg" height="300px" width="200px">
      </div>
    </div>
    <div class="section row no-padding centered">
      <div class="left image-stacked">
        <img src="/assets/s4.jpg" height="200px" width="300px">
        <img src="/assets/s4p2.jpg" height="300px" width="200px">
      </div>
      <div class="right">
        <h1>Practice Patience</h1>
        <p>Nobody wants to feel judged. If someone wants to learn more, they’ll ask. Over time a low-key approach will make them more open to changing how they eat too.</p>
      </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="js/switch-carousel-1.js"></script>
    <script src="js/switch-carousel-2.js"></script>

    <div class="section column centered">
      <h1>Same but Better</h1>
      <p>Worried you’ll miss meat? Not to fear: There are juicy plant-based meats waiting in the produce and freezer sections of your local supermarket. Just warm and serve them in minutes. You’ll see why Bill Gates, Google, and major food companies have
        declared that the future of meat is plant-based.</p>
      <div class="carousel row centered" id="carousel-switch-2">
        <div class="left arrow row centered" onclick="changeSlide2(-1)">
          <i class="material-icons">
            keyboard_arrow_left
          </i>
        </div>
        <div class="content">
          <img src="/assets/switchsb1.jpg" height="250px" width="320px">
          <h3></h3>
          <p></p>
          <a href="#" class="button green">Add to Grocery List</a>
        </div>
        <div class="content">
          <img src="/assets/switchsb2.jpg" height="250px" width="320px">
          <h3></h3>
          <p></p>
          <a href="#" class="button green">Add to Grocery List</a>
        </div>
        <div class="right arrow row centered" onclick="changeSlide2(1)">
          <i class="material-icons">
            keyboard_arrow_right
          </i>
        </div>
      </div>
    </div>
    <div class="section pink-bg row reversed centered overlapped one-third full-width">
      <div class="right column vertically-centered">
        <h1>Do It for Yourself</h1>
        <h3>Pledge to try plant-based eating!</h3>
        <p>The best way to make a positive change is to commit yourself to it. So why wait? Pledge now to try plant-based eating and use the free tools on ChooseVeg to help you stick with it. Click “Get the Guide Now” to download our free Vegetarian Starter
          Guide!</p>
        <div class="button green">
          Get the Guide Now
          <i class="material-icons">
            keyboard_arrow_right
          </i>
        </div>
      </div>
      <div style="margin-right:30px;"class="left">
        <img src="/assets/switchguide.png" height="400px" width="300px">
      </div>
    </div>
    <div class="section no-margin no-padding full-width row centered">
      <img src="/assets/switchend1.jpg" height="250px" width="320px">
      <img src="/assets/switchend2.jpg" height="250px" width="320px">
      <img src="/assets/switchend3.jpg" height="250px" width="320px">
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

</switch>
