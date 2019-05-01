<my-questions>
  <div class="">
    <h1>My Questions</h1>
  </div>
  <div each={item, i in questions} class="">
    <h2>{item.question}</h2>
    <button style="margin-bottom:20px;"type="button" onclick={ showComments } >Show comments</button>
    <comments each={ answer, i in comments }></comments>
    <div style="margin-top:20px;" class="button call-to-action rounded pink" onclick={ deleteQuestion }>Delete</div>

  </div>

  <script>

    this.comments = [];
    showComments(e) {
      let userKey = firebase.auth().currentUser.uid;
      let questionID = e.item.item.id;
      let commentsRef = database.doc('users/' + userKey).collection('questions').doc(questionID).collection('comments');
      debugger
      commentsRef.orderBy('timestamp', 'desc').onSnapshot(snapshot => {
        let commentItems = [];
        debugger
        snapshot.forEach(doc => {
          commentItems.push(doc.data());
          //return doc.data()
        })
        debugger
        this.comments = commentItems;
        debugger
        this.update();
      })
    }

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

    //delete question
    deleteQuestion(event) {

      let userKey = firebase.auth().currentUser.uid;
      let id = event.item.item.id;

      let userQuestions = database.doc('users/' + userKey).collection('questions');

      userQuestions.doc(id).delete();
      questionsRef.doc(id).delete();
      this.update();
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
