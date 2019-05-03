<q-item>
  <h2>{item.question}</h2>
  <button style="margin-bottom:20px;"type="button" onclick={ showComments } >Show comments</button>
  <comments each={ answer, i in comments }></comments>
  <div style="margin-top:20px;" class="button call-to-action rounded pink" onclick={ deleteQuestion }>Delete</div>

  <script>
  console.log(this);
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
  </script>
</q-item>
