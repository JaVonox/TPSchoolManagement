<!DOCTYPE HTML>

<head>
  <style>
  body {
    font-size: 150%;
  }
  .aligned_text {
    text-align: center;
  }
  .left {
    width: 60%;
    float: left;        /*code to align all the left side elements,*/
    text-align: right;  /*so text boxes are aligned*/
  }
  .button {
    background-color: #4472C4;  /*light blue*/
    padding: 8px 16px;
  }
  </style>

  </head>


<body>
<div class = "aligned_text">
  <h2> Resetting your password </h2>
  <div>
  <input type="radio" name="personType">
  <label>Teacher</label>
  <input type="radio" name="personType">
  <label>Student</label>
  <input type="radio" name="personType">
  <label>Staff</label>
  </div>
  <br>
  <div class = "left">ID: <input type = "text" placeholder="ID"> </div>
  <br>
  <div class ="left">Password*: <input type = "text" placeholder="Password"> </div>
  <br>
  <div class ="left">Confirm Password*: <input type = "text" placeholder="Confirm Password"> </div>
  <br> <br>
  <button class ="button">Reset</button>
</div>
</body>
