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

      <ul>
        <li each= { todo in list.filter(whatShow) }>
          <label class={ completed: todo.done }>
            <input type="checkbox" chekced = { todo.done } onclick = { toggle }>
            {todo.title}
          </label>
        </li>
      </ul>



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
      //database write preparation
      let userKey = firebase.auth().currentUser.uid;
      let groceryRef = database.doc('users/' + userKey).collection('groceryList');
      let itemID = groceryRef.doc().id;

     if (this.item) {
      let todo = {
        title: this.item,
        done: false,
        id: itemID,
        timestamp:firebase.firestore.FieldValue.serverTimestamp()
      };
      this.list.push(todo);
      console.log(this.list);
      this.update();

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

    whatShow(item) {
			return !item.hidden;
		}


  </script>

  <style>
   .compelted {
     text-decoration: line-through;
     color:#ccc;
   }

  </style>
</grocery-list>
