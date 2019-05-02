<my-stories>
  <div class="">
   <h1>My Stories</h1>
  </div>
  <story-item each={ story, i in stories }></story-item>

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

    this.stories = [];

    let database = firebase.firestore();
    let usersRef = database.collection('users');

    let myStories;

    this.on('mount', () => {
      let userKey = firebase.auth().currentUser.uid;
      let storiesRef = usersRef.doc(userKey).collection('stories');

        myStories = storiesRef.orderBy('timestamp', 'desc').onSnapshot(snapshot => {
          let listItems = [];

          snapshot.forEach(doc => {
            listItems.push(doc.data());
            // return doc.data();
          })
          this.stories = listItems;
          this.update();
        })
    });

    this.on('unmount', () => {
      myStories();
    });

  </script>


</my-stories>
