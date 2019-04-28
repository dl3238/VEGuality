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
        <a href="/"><img style="margin-top:20px;width:30%;" src="/assets/logo.png"/></a>

      </div>
      <div style="padding-top:20px;"class="links row vertically-centered">
        <a class="row vertically-centered" href="#">SWITCH</a>
        <a class="row vertically-centered" href="cook.html">COOK</a>
        <a class="row vertically-centered" href="explore.html">EXPLORE</a>
        <a class="row vertically-centered" href="inspire.html">INSPIRE</a>
        <a class="row vertically-centered" href="#">CONNECT</a>
      </div>
      <div style="margin-top:20px;" show={ !user } class="button call-to-action rounded green" onclick={ login }>Join the Community</div>
      <div style="margin-top:20px;" show={ user } class="button call-to-action rounded green" onclick={ logout }>Logout</div>
      <a href="profile.html"><div style="margin-left:10px;margin-top:20px;" show={ user } class="button call-to-action rounded green">Profile</div></a>

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
          <img src="/assets/m1.jpg" height="300px" width="280px">
          <h3></h3>
          <p></p>
        </div>
        <div class="content">
          <img src="/assets/m2.jpeg" height="300px" width="280px">
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
        <img src="/assets/s4p2.jpg" height="300px" width="280px">
      </div>
      <div class="right">
        <h1>Practice Patience</h1>
        <p>Nobody wants to feel judged. If someone wants to learn more, they’ll ask. Over time a low-key approach will make them more open to changing how they eat too.</p>
      </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="js/switch-carousel-1.js"></script>
    <script src="js/switch-carousel-2.js"></script>


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

//carousel
    var currentSlide1 = 0;
    var slides1 = [
        {
            left: {
                image: "https://via.placeholder.com/320x250",
                title: "Convenience in a Can 1",
                content: "Pack your cupboard with black beans, lentils, vegetarian chili, and savory soups for satisfying plant-based protein."
            },
            right: {
                image: "https://via.placeholder.com/320x250",
                title: "Convenience in a Can 2",
                content: "Pack your cupboard with black beans, lentils, vegetarian chili, and savory soups for satisfying plant-based protein."
            }
        },
        {
            left: {
                image: "https://via.placeholder.com/320x250",
                title: "Convenience in a Can 3",
                content: "Pack your cupboard with black beans, lentils, vegetarian chili, and savory soups for satisfying plant-based protein."
            },
            right: {
                image: "https://via.placeholder.com/320x250",
                title: "Convenience in a Can 4",
                content: "Pack your cupboard with black beans, lentils, vegetarian chili, and savory soups for satisfying plant-based protein."
            }
        },
        {
            left: {
                image: "https://via.placeholder.com/320x250",
                title: "Convenience in a Can 5",
                content: "Pack your cupboard with black beans, lentils, vegetarian chili, and savory soups for satisfying plant-based protein."
            },
            right: {
                image: "https://via.placeholder.com/320x250",
                title: "Convenience in a Can 6",
                content: "Pack your cupboard with black beans, lentils, vegetarian chili, and savory soups for satisfying plant-based protein."
            }
        }
    ];

    function initialiseCarousel1() {
        // for carousel 1
        var carousel = document.getElementById("carousel-switch-1");
        if (carousel != undefined) {
            var leftContent = carousel.getElementsByClassName("content")[0];
            var rightContent = carousel.getElementsByClassName("content")[1];
            leftContent.children[0].setAttribute("src", slides1[currentSlide1].left.image);
            leftContent.children[1].innerText = slides1[currentSlide1].left.title;
            leftContent.children[2].innerText = slides1[currentSlide1].left.content;
            rightContent.children[0].setAttribute("src", slides1[currentSlide1].right.image);
            rightContent.children[1].innerText = slides1[currentSlide1].right.title;
            rightContent.children[2].innerText = slides1[currentSlide1].right.content;
        }
    }

    function changeSlide1(increment) {
        if (increment > 0) {
            if (currentSlide1 >= slides1.length - 1) {
                currentSlide1 = 0;
            } else {
                currentSlide1++;
            }
        } else {
            if (currentSlide1 <= 0) {
                currentSlide1 = slides1.length - 1;
            } else {
                currentSlide1--;
            }
        }
        var carousel = document.getElementById("carousel-switch-1");
        var leftContent = carousel.getElementsByClassName("content")[0];
        var rightContent = carousel.getElementsByClassName("content")[1];
        if (slides1[currentSlide1].left != undefined) {
            leftContent.children[0].setAttribute("src", slides1[currentSlide1].left.image);
            leftContent.children[1].innerText = slides1[currentSlide1].left.title;
            leftContent.children[2].innerText = slides1[currentSlide1].left.content;
        } else {
            leftContent.children[0].setAttribute("src", "");
            leftContent.children[1].innerText = "";
            leftContent.children[2].innerText = "";
        }

        if (slides1[currentSlide1].right != undefined) {
            rightContent.children[0].setAttribute("src", slides1[currentSlide1].right.image);
            rightContent.children[1].innerText = slides1[currentSlide1].right.title;
            rightContent.children[2].innerText = slides1[currentSlide1].right.content;
        } else {
            rightContent.children[0].setAttribute("src", "");
            rightContent.children[1].innerText = "";
            rightContent.children[2].innerText = "";
        }
    }

    initialiseCarousel1();

  </script>

</switch>
