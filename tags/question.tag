<question>
  <div class="text-center questionContainer vertically-centered">
    <div style="padding-left:150px;padding-right:150px;"class="overlay column centered question">
      <h2>{item.question}</h2>
      <button style="margin-bottom:20px;"type="button" onclick={ showComments } >Show comments</button>
      <comments each={ answer, i in comments }></comments>
      <textarea ref="comment" style="color:black;border:solid;border-width:1px;border-radius:1rem;"name="description" rows="2" cols="60" onchange={commentInput}></textarea>
      <div style="margin-top:20px;" show={ !user } class="button call-to-action rounded green" onclick={ login }>Login to submit</div>
      <div style="margin-top:20px;" show={ user } class="button call-to-action rounded green" onclick={ commentSubmit }>Submit your answer</div>
    </div>
    <hr>
  </div>

  <script>
  //comments part
  this.comment = "";
  this.comments = [];

  let database = firebase.firestore();
  let questionsRef = database.collection('questions');

  commentInput(e) {
    this.comment = e.currentTarget.value;
  };

  commentSubmit(e) {
    let userKey = firebase.auth().currentUser.uid;
    let questionID = e.item.item.id;
    let userQuestions = database.doc('users/' + userKey).collection('questions');

    let commentsRef = questionsRef.doc(questionID).collection('comments');
    let commentKey = commentsRef.doc().id

    if (this.comment) {

      let commentItem = {
        comment: this.comment,
        timestamp: firebase.firestore.FieldValue.serverTimestamp(),
        id:commentKey,
      };
      this.comments.push(commentItem);
      console.log(this.comments);
      this.update();

      commentsRef.doc(commentKey).set({
        comment: this.comment,
        timestamp: firebase.firestore.FieldValue.serverTimestamp(),
        id:commentKey,
      });

      userQuestions.doc(questionID).collection('comments').doc(commentKey).set({
        comment: this.comment,
        timestamp: firebase.firestore.FieldValue.serverTimestamp(),
        id:commentKey,
      });
      this.comment = this.refs.comment.value = '';
    }
    event.preventDefault();
  };

  //realtime db

  showComments(e) {
    let questionID = e.item.item.id;
    debugger
    let commentsRef = questionsRef.doc(questionID).collection('comments');
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
      this.update();
    })
  }


  </script>

  <style>

  </style>
</question>
