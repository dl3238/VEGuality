<grocery-list>
  <div class="">
    <h1>Grocery List</h1>
    <form class="">
      <input ref="input" type="text" name="item" placeholder="item" onchange={ inputItem }>
      <button type="button" onclick= { add }>Add to list</button>
    </form>
  </div>
  <div style="border:solid;"class="">
    <h1>123</h1>


        <label each= { i in list } class={ completed: todo.done }>
          <input type="checkbox" chekced = { todo.done } onclick = { toggle }>
          {this.item}
        </label>


  </div>



  <script>

    //set up database
    let database = firebase.firestore();

    let usersRef = database.collection('users');

    // let userKey = firebase.auth().currentUser.uid;
    // let groceryRef = database.doc('users/' + userKey).collection('groceryList');

    this.item = "";
    this.list = [];

    inputItem(e) {
      //user input the item
      this.item = e.currentTarget.value;
    };

    add(e) {
      //add item to the list array
     this.list.push(this.item);

     if (this.item) {
       //database write preparation
       let userKey = firebase.auth().currentUser.uid;
       let groceryRef = database.doc('users/' + userKey).collection('groceryList');
       let itemID = groceryRef.doc().id;

      //database write
      groceryRef.doc(itemID).set({

        title: this.item,
        done: false,
        id: itemID,
        timestamp:firebase.firestore.FieldValue.serverTimestamp()
        
      });

      this.item = this.refs.input.value = '';
     }
     event.preventDefault();
    }

    toggle(event) {

    };


  </script>

  <style>
   .compelted {
     text-decoration: line-through;
     color:#ccc;
   }

  </style>
</grocery-list>
