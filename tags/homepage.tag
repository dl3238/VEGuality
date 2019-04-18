<homepage>
  <!-- HTML -->
  <div class={ foo } onclick={ bar }>{ myMsg }</div>

  <script>
    // JAVASCRIPT
    let tag = this;

    this.myMsg = "Hello!";
    this.foo = "special";

    this.bar = function(event) {
      alert('CLICKED!');
      tag.myMsg = "Goodbye!";
    }
  </script>

  <style>
    /* CSS */
    :scope {}
    .special {
      background-color: #333333;
      color: #FFFFFF;
    }
  </style>
</homepage>
