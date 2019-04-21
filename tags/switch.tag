<switch>

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
        <a class="row vertically-centered" href="#">SWITCH</a>
        <a class="row vertically-centered" href="#">COOK</a>
        <a class="row vertically-centered" href="#">EXPLORE</a>
        <a class="row vertically-centered" href="#">INSPIRE</a>
        <a class="row vertically-centered" href="#">LAUGH</a>
      </div>
      <div style="margin-top:20px;" show={ !user } class="button call-to-action rounded green" onclick={ login="login" }="}">Join the Community</div>
      <div style="margin-top:20px;" show={ user } class="button call-to-action rounded green" onclick={ logout="logout" }="}">Logout</div>
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
          <img src="https://via.placeholder.com/320x250"/>
          <h3></h3>
          <p></p>
        </div>
        <div class="content">
          <img src="https://via.placeholder.com/320x250"/>
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
        <img src="https://via.placeholder.com/300x200"/>
        <img src="https://via.placeholder.com/200x300"/>
      </div>
    </div>
    <div class="section row no-padding centered">
      <div class="left image-stacked">
        <img src="https://via.placeholder.com/300x200"/>
        <img src="https://via.placeholder.com/300x200"/>
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
        <img src="https://via.placeholder.com/300x200"/>
        <img src="https://via.placeholder.com/200x300"/>
      </div>
    </div>
    <div class="section row no-padding centered">
      <div class="left image-stacked">
        <img src="https://via.placeholder.com/200x300"/>
        <img src="https://via.placeholder.com/300x200"/>
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
          <img src="https://via.placeholder.com/320x250"/>
          <h3></h3>
          <p></p>
          <a href="#" class="button green">Add to Grocery List</a>
        </div>
        <div class="content">
          <img src="https://via.placeholder.com/320x250"/>
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
      <div class="left">
        <img src="https://via.placeholder.com/300x400"/>
      </div>
    </div>
    <div class="section no-margin no-padding full-width row centered">
      <img src="https://via.placeholder.com/500x300"/>
      <img src="https://via.placeholder.com/500x300"/>
      <img src="https://via.placeholder.com/500x300"/>
    </div>

  </body>

</html>
Collapse 10:19 PM EAT tag
<!doctype html>

<html lang="en">

  <head>
    <meta charset="utf-8">

    <title>TITLE</title>

    <link rel="stylesheet" href="css/styles.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
  </head>

  <body class="no-margin">
    <nav class="row centered">
      <div class="logo">
        <img src="https://via.placeholder.com/100x60"/>
      </div>
      <div class="links row vertically-centered">
        <a class="row vertically-centered" href="#">SWITCH</a>
        <a class="row vertically-centered" href="#">COOK</a>
        <a class="row vertically-centered" href="#">EXPLORE</a>
        <a class="row vertically-centered" href="#">INSPIRE</a>
        <a class="row vertically-centered" href="#">LAUGH</a>
      </div>
      <div class="button call-to-action rounded green">Join the Community</div>
      <div class="button">
        <i class="material-icons">
          shopping_cart
        </i>
      </div>
    </nav>
    <div class="header">
      <div class="home bg row centered">
        <div class="overlay column centered">
          <h1>Mouthwatering meals are just a click away</h1>
          <div class="play button">
            <i class="material-icons">
              play_arrow
            </i>
          </div>
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
          <img src="https://via.placeholder.com/320x250"/>
          <h3>Name of Dish</h3>
          <p>short writeup about it</p>
        </div>
        <div class="content">
          <img src="https://via.placeholder.com/320x250"/>
          <h3></h3>
          <p></p>
        </div>
        <div class="content">
          <img src="https://via.placeholder.com/320x250"/>
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
      <h1>Lunch</h1>
      <div class="carousel row centered" id="carousel-switch-2">
        <div class="left arrow row centered" onclick="changeSlide1(-1)">
          <i class="material-icons">
            keyboard_arrow_left
          </i>
        </div>
        <div class="content">
          <img src="https://via.placeholder.com/320x250"/>
          <h3>Name of Dish</h3>
          <p>short writeup about it</p>
        </div>
        <div class="content">
          <img src="https://via.placeholder.com/320x250"/>
          <h3></h3>
          <p></p>
        </div>
        <div class="content">
          <img src="https://via.placeholder.com/320x250"/>
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
      <h1>Dinner</h1>
      <div class="carousel row centered" id="carousel-switch-3">
        <div class="left arrow row centered" onclick="changeSlide1(-1)">
          <i class="material-icons">
            keyboard_arrow_left
          </i>
        </div>
        <div class="content">
          <img src="https://via.placeholder.com/320x250"/>
          <h3>Name of Dish</h3>
          <p>short writeup about it</p>
        </div>
        <div class="content">
          <img src="https://via.placeholder.com/320x250"/>
          <h3></h3>
          <p></p>
        </div>
        <div class="content">
          <img src="https://via.placeholder.com/320x250"/>
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

    <div class="section row vertically-centered space-around off-white-bg full-width no-margin">
      <div class="left column">
        <h1>It Just Got Easier</h1>
        <h4>Planning your supermarketing has never been easier. Write down what you need to buy so it's ready for your next trip to the grocers!
        </h4>
        <div class="button green">Create your grocery list</div>
      </div>
      <div class="right row centered">
        <img src="https://via.placeholder.com/500x300"/>
      </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="js/switch-carousel-1.js"></script>
    <script src="js/switch-carousel-2.js"></script>
  </body>

</switch>
