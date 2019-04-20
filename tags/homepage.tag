<homepage>
  <!-- HTML -->
  <!doctype html>

<html lang="en">

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
            <img style="width:30%;" src="assets/logo.png" />
        </div>
        <div class="links row vertically-centered">
            <a class="row vertically-centered" href="#">SWITCH</a>
            <a class="row vertically-centered" href="#">COOK</a>
            <a class="row vertically-centered" href="#">EXPLORE</a>
            <a class="row vertically-centered" href="#">INSPIRE</a>
            <a class="row vertically-centered" href="#">LAUGH</a>
        </div>
        <!-- <button show={ !user } class="btn btn-outline-success my-2 my-sm-0" type="button" onclick={ login }>Login</button>
	      <button show={ user } class="btn btn-outline-danger my-2 my-sm-0" type="button" onclick={ logout }>Logout</button> -->

        <div show={ !user } class="button call-to-action rounded green" onclick= { login }>Join the Community</div>
        <div show={ user } class="button call-to-action rounded green" onclick= { logout }>Logout</div>
        <div class="button">
            <i class="material-icons">
                shopping_cart
            </i>
        </div>
    </nav>
    <div class="header">
        <div class="home bg row vertically-centered space-around">
            <div class="overlay column centered">
                <h5>FEEL WONDERFUL. LOOK GREAT.</h5>
                <h1>The road to a better you starts on your plate.</h1>
                <div class="button call-to-action green">Get Your Free Guide Now</div>
            </div>
        </div>
    </div>
    <!-- first row -->
    <div class="section column centered">
        <div class="row vertically-centered space-around">
            <!-- Card 1 -->
            <div class="card overlapped">
                <div class="top">
                    <img src="https://via.placeholder.com/320x250">
                </div>
                <div class="bottom">
                    <div class="description">
                        <h2>Make the Move</h2>
                        <p>Want to eat more delicious plant-based food? Here's how to do it.</p>
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
            <div class="card overlapped">
                <div class="top">
                    <img src="https://via.placeholder.com/320x250">
                </div>
                <div class="bottom">
                    <div class="description">
                        <h2>Make the Move</h2>
                        <p>Want to eat more delicious plant-based food? Here's how to do it.</p>
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
            <div class="card overlapped">
                <div class="top">
                    <img src="https://via.placeholder.com/320x250">
                </div>
                <div class="bottom">
                    <div class="description">
                        <h2>Make the Move</h2>
                        <p>Want to eat more delicious plant-based food? Here's how to do it.</p>
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
            <div class="card overlapped">
                <div class="top">
                    <img src="https://via.placeholder.com/320x250">
                </div>
                <div class="bottom">
                    <div class="description">
                        <h2>Make the Move</h2>
                        <p>Want to eat more delicious plant-based food? Here's how to do it.</p>
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
            <div class="card overlapped">
                <div class="top">
                    <img src="https://via.placeholder.com/320x250">
                </div>
                <div class="bottom">
                    <div class="description">
                        <h2>Make the Move</h2>
                        <p>Want to eat more delicious plant-based food? Here's how to do it.</p>
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
            <div class="card overlapped">
                <div class="top">
                    <img src="https://via.placeholder.com/320x250">
                </div>
                <div class="bottom">
                    <div class="description">
                        <h2>Make the Move</h2>
                        <p>Want to eat more delicious plant-based food? Here's how to do it.</p>
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

</homepage>
