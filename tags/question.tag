<question>
  <div class="text-center questionContainer vertically-centered">
    <div class="overlay column centered question">
      <h1>{item.question}</h1>
      <small>timestamp: </small>
      <p>comment1</p>
      <textarea style="color:black;border:solid;border-width:1px;border-radius:1rem;"name="description" rows="2" cols="60"></textarea>
      <div style="margin-top:20px;" show={ !user } class="button call-to-action rounded green" onclick={ login }>Login to submit</div>
      <div style="margin-top:20px;" show={ user } class="button call-to-action rounded green" onclick={ answer }>Submit your answer</div>
    </div>
    <hr>
  </div>

  <script>



  </script>

  <style>

  </style>
</question>
