<story-item>
  <div style="border:solid;border-width:1px;border-radius:1rem;border-color:gray;padding:20px;margin-bottom:20px;"class="">
    <h1>{story.title}</h1>
    <p>{story.content}</p>
    <button class="btn btn-danger"type="button" onclick= { deleteStory }>Delete</button>

  </div>

  <script>
    // refs to db
    let database = firebase.firestore();
    let usersRef = database.collection('users');

    deleteStory(event) {
      console.log(event);
      let userKey = firebase.auth().currentUser.uid;
      let id = event.item.story.id;


      let storiesRef = usersRef.doc(userKey).collection('stories');
      storiesRef.doc(id).delete();
      this.update();
    }

  </script>
</story-item>
