<my-questions>
  <div class="">
    <h1>My Questions</h1>
  </div>

  <q-item each={item, i in questions}></q-item>

  <script>

    firebase.auth().onAuthStateChanged(userObj => {
      if (userObj) {
        this.user = userObj;
        let userKey = firebase.auth().currentUser.uid;
        localStorage.setItem('userKey', userKey);
      } else {
        this.user = null;
      }
      this.update();
    });

    // refs to db
    let database = firebase.firestore();
    let usersRef = database.collection('users');
    let questionsRef = database.collection('questions');

    this.questions = [];

    //realtime db
    let myQuestions;

    this.on('mount', () => {
      let userKey = firebase.auth().currentUser.uid;
      let userQuestions = database.doc('users/' + userKey).collection('questions');

        myQuestions = userQuestions.orderBy('timestamp', 'desc').onSnapshot(snapshot => {
          let listItems = [];

          snapshot.forEach(doc => {
            listItems.push(doc.data());
            // return doc.data();
          })
          this.questions = listItems;
          this.update();
        })
    })

    this.on('unmount', () => {
      myQuestions();
    })
  </script>

  <style>
    /* CSS */
    :scope {}
    .special {
      background-color: #333333;
      color: #FFFFFF;
    }
  </style>
</my-questions>
