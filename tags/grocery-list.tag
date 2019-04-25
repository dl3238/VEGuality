<grocery-list>
  <div class="">
    <h1>Grocery List</h1>
    <form class="">
      <input type="text" name="item" placeholder="item" onchange={ inputItem }>
      <button type="button" onclick= { add }>Add to list</button>
    </form>
  </div>
  <div style="border:solid;"class="">
    <h1>123</h1>
  </div>

  <script>

    //set up database
    let database = firebase.firestore();

    let usersRef = database.collection('users');
    
    // let userKey = firebase.auth().currentUser.uid;
    // let groceryRef = database.doc('users/' + userKey).collection('groceryList');

    this.item = "";
    this.listItem = [];

    inputItem(e) {
      //user input the item
      this.item = e.currentTarget.value;
    };

    add(e) {
      //add item to the list array
     this.listItem.push(this.item);
    };


  </script>
</grocery-list>
