<connect>
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
      <div style="padding-top:20px;"class="links row vertically-centered">
        <a class="row vertically-centered" href="switch.html">SWITCH</a>
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
      <div class="connect-bg row vertically-centered space-around">
        <div style="padding-bottom:60px;"class="overlay column centered">
          <h1>Ask your questions</h1>
          <textarea refs="textarea" style="color:black;border:solid;border-width:1px;border-radius:1rem;margin-top:-30px;"name="description" rows="4" cols="60" placeholder="type in your question here" onchange={ questionInput }></textarea>
          <div style="margin-top:20px;" show={ !user } class="button call-to-action rounded green" onclick={ login }>Login to submit</div>
          <div style="margin-top:20px;" show={ user } class="button call-to-action rounded green" onclick={ questionSubmit }>Submit</div>
        </div>
      </div>
    </div>

    <div style="margin-top:-200px;"class="text-center questionContainer vertically-centered">
      <div class="overlay column centered question">
        <h1>This is my first question?</h1>
        <small>timestamp: </small>
        <p>comment1</p>
        <textarea style="color:black;border:solid;border-width:1px;border-radius:1rem;"name="description" rows="2" cols="60" placeholder="type in your answer/comment here"></textarea>
        <div style="margin-top:20px;" show={ !user } class="button call-to-action rounded green" onclick={ login }>Login to submit</div>
        <div style="margin-top:20px;" show={ user } class="button call-to-action rounded green" onclick={ answer }>Submit your answer</div>
      </div>
      <hr>
    </div>

    <question each={ item, i in questionList }></question>

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

    //database references
    let database = firebase.firestore();
    let questionsRef = database.collection('questions');
    let usersRef = database.collection('users');

    this.question = "";
    this.questionList = [];

    questionInput(e) {
      this.question = e.currentTarget.value;
    };

    questionSubmit() {
      let userKey = firebase.auth().currentUser.uid;
      let questionKey = questionsRef.doc().id;
      let userQuestions = database.doc('users/' + userKey).collection('questions');

      if (this.question) {
        let questionItem = {
          question: this.question,
          uid: userKey,
          timestamp: firebase.firestore.FieldValue.serverTimestamp(),
          id:questionKey,
        };
        this.questionList.push(questionItem);
        this.update();

        database.doc('questions/' + questionKey).set({
          uid: userKey,
          question: this.question,
          timestamp: firebase.firestore.FieldValue.serverTimestamp(),
          id: questionKey,
        });

        userQuestions.doc(questionKey).set({
          uid: userKey,
          question: this.question,
          timestamp: firebase.firestore.FieldValue.serverTimestamp(),
          id: questionKey,
        });
        this.question = this.refs.textarea.value = "";
      }
      event.preventDefault();
    };

    //realtime db
    let connect;

    this.on('mount', () => {

        connect = questionsRef.orderBy('timestamp', 'desc').onSnapshot(snapshot => {
          let listItems = [];

          snapshot.forEach(doc => {
            listItems.push(doc.data());
            // return doc.data();
          })
          this.questionList = listItems;
          this.update();
        })
    })

    this.on('unmount', () => {
      connect();
    })


  </script>

  <style>
    .connect-bg {
      height: 60%;
      width: 100%;
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      background-image: url('https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80');
    }
    .questionContainer {
      margin-top:;
      border-bottom: :solid;
      border-color:gray;
      border-width:1px;

    }
  </style>
</connect>
