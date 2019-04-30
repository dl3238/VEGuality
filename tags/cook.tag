<cook>

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
        <a class="row vertically-centered" href="switch.html">SWITCH</a>
        <a class="row vertically-centered" href="#">COOK</a>
        <a class="row vertically-centered" href="explore.html">EXPLORE</a>
        <a class="row vertically-centered" href="inspire.html">INSPIRE</a>
        <a class="row vertically-centered" href="connect.html">CONNECT</a>
      </div>
      <div style="margin-top:20px;" show={ !user } class="button call-to-action rounded green" onclick={ login }>Join the Community</div>
      <div style="margin-top:20px;" show={ user } class="button call-to-action rounded green" onclick={ logout }>Logout</div>
      <a href="profile.html"><div style="margin-left:10px;margin-top:20px;" show={ user } class="button call-to-action rounded green">Profile</div></a>

    </nav>
    <div class="header">
      <div class="cook bg row centered">
        <div class="overlay column centered">
          <h1>Mouthwatering meals are just a click away</h1>
        </div>
      </div>
    </div>

    <div class="section column centered">
      <h1>Magnificent Meals</h1>
      <p>Wondering what to eat? Here are some easy, familiar meal ideas for breakfast, lunch, and dinner.</p>
    </div>

    <div class="section column centered">
      <h1>Breakfast</h1>
      <div class="carousel row centered" id="carousel-switch-1">
        <div class="left arrow row centered" onclick="changeSlide1(-1)">
          <i class="material-icons">
            keyboard_arrow_left
          </i>
        </div>
        <div class="content">
          <img src="/assets/cb1.jpg" height="250px" width="280px">
          <h3>
            <a href="https://www.happy-mothering.com/08/recipes/vegan-bacon-breakfast-sandwich/" target="_blank"><i>Bacon</i>
            and Avocado Breakfast Sandwich</a></h3>
          <p>What's better than a whole grain breakfast sandwich packed with savory flavors?!</p>
        </div>
        <div class="content">
          <img src="/assets/cb2.jpg" height="250px" width="280px">
          <h3>Tofu <i>egg</i> and Hash browns</h3>
          <p>Learn how to cook this simple dish! Add hot sauce to spice it up!</p>
        </div>
        <div class="content">
          <img src="/assets/cb3.jpg" height="250px" width="280px">
          <h3>Whole-grain waffles and <i>sausage</i></h3>
          <p>Cook with a lot of love in a couple of minutes!</p>
        </div>
        <div class="right arrow row centered" onclick="changeSlide1(1)">
          <i class="material-icons">
            keyboard_arrow_right
          </i>
        </div>
      </div>
    </div>

    <div class="section column centered">
      <h1>Lunch</h1>
      <div class="carousel row centered" id="carousel-switch-2">
        <div class="left arrow row centered" onclick="changeSlide1(-1)">
          <i class="material-icons">
            keyboard_arrow_left
          </i>
        </div>
        <div class="content">
          <img src="/assets/cl1.jpg" height="280px" width="250px">
          <h3><a href="https://lovingitvegan.com/vegan-tomato-basil-soup/" target="_blank">Tomato and Basil Soup</a></h3>
          <p>YUM! A protein-packed meal full of veggies that will full you up.</p>
        </div>
        <div class="content">
          <img src="/assets/cl2.jpg" height="250px" width="280px">
          <h3><i>Cheesy</i> Pinto Bean tacos</h3>
          <p>Enjoy this filling meal - protein-rich beans, dairy-free sour cream, whole-grain brown rice, and cheesy Daiya cheddar-style shreds!</p>
        </div>
        <div class="content">
          <img src="/assets/cl3.jpg" height="250px" width="280px">
          <h3><i>Turk'y</i> Sandwich with Sprouts and Avocado</h3>
          <p>Delicious sandwhich in a matter of minutes!</p>
        </div>
        <div class="right arrow row centered" onclick="changeSlide1(1)">
          <i class="material-icons">
            keyboard_arrow_right
          </i>
        </div>
      </div>
    </div>

    <div class="section column centered">
      <h1>Dinner</h1>
      <div class="carousel row centered" id="carousel-switch-3">
        <div class="left arrow row centered" onclick="changeSlide1(-1)">
          <i class="material-icons">
            keyboard_arrow_left
          </i>
        </div>
        <div class="content">
          <img src="/assets/cd1.jpg" height="250px" width="280px">
          <h3><a href="https://www.yummly.com/recipe/Vegan-Stuffed-Sweet-Potato-1579325" target="_blank">Stuffed Baked Potato and Salad</a></h3>
          <p>This potato and salad will make you satisfied without feeling stuffed.</p>
        </div>
        <div class="content">
          <img src="/assets/cd2.jpg" height="250px" width="280px">
          <h3>Spaghetti with <i>meat</i>balls</h3>
          <p>This is a classic! Grab your spaghetti-twirling fork and go for it!</p>
        </div>
        <div class="content">
          <img src="/assets/cd3.jpg" height="250px" width="280px">
          <h3>Avocado burger with Sweet Potato Fries</h3>
          <p>No need for an introduction! Stacked high with fresh and nourishing ingredients.</p>
        </div>
        <div class="right arrow row centered" onclick="changeSlide1(1)">
          <i class="material-icons">
            keyboard_arrow_right
          </i>
        </div>
      </div>
    </div>

    <div class="section row vertically-centered space-around off-white-bg full-width no-margin">
      <div class="left column">
        <h1>It Just Got Easier</h1>
        <h4>Planning your supermarket-ing has never been easier. Write down what you need to buy so it's ready for your next trip to the grocery store!
        </h4>
        <div class="button green" onclick={ groList }>Create your grocery list</div>
      </div>
      <div class="right row centered">
        <img src="/assets/grocerylist.jpg" height="300px" width="500px">
      </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="js/switch-carousel-1.js"></script>
    <script src="js/switch-carousel-2.js"></script>
  </body>

  <script>
    this.user = "";
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

    //create grocerylist button
    // groList(e) {
    //   if (e == null) {
    //     alert "Please use your google account to log in first!";
    //   } else{
    //    null;
    //   }
    // };


  </script>

</cook>
