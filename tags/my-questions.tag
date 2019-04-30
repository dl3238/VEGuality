<my-questions>
  <div class="">
    <h1>My Questions</h1>
  </div>
  <div each={item, i in questions} class="">
    <h2>{item.question}</h2>
    <p>comments</p>
    <div style="margin-top:20px;" class="button call-to-action rounded pink" onclick={ deleteQuestion }>Delete</div>

  </div>

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
    this.questions = [];

    //delete question
    deleteQuestion(event) {

      let userKey = firebase.auth().currentUser.uid;
      debugger
      let userQuestions = database.doc('users/' + userKey).collection('questions');
      debugger
      let questionKey = userQuestions.doc().id;
      debugger

      userQuestions.doc(questionKey).delete();
      debugger
    }

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
