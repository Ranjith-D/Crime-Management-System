<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 1500px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;} 
    }
  </style>
</head>
<body>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav">
      <h4>John's Blog</h4>
      <ul class="nav nav-pills nav-stacked">
        <li><a href="complaint.jsp">Add complaint</a></li>
        <li><a href="report.jsp">Add crime report</a></li>
        <li><a href="missing.jsp">Add missing persom</a></li>
        <li><a href="feedback.jsp">feedback</a></li>
      </ul><br>
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search Blog..">
        <span class="input-group-btn">
          <button class="btn btn-default" type="button">
            <span class="glyphicon glyphicon-search"></span>
          </button>
        </span>
      </div>
    </div>
	<div class="col-sm-9">
            <form action="" method="post">
		<div class="form-group">
                    <label for="exampleInputEmail1">Name</label>
                    <input type="email" class="form-control" name="" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter name">
	        </div>
                                <fieldset class="form-group">
                  <legend>Gender</legend>
                  <div class="form-check">
                    <label class="form-check-label">
                      <input type="radio" class="form-check-input" name="gnd" id="optionsRadios1" value="male" >
                      Male
                    </label>
                  </div>
                  <div class="form-check">
                  <label class="form-check-label">
                      <input type="radio" class="form-check-input" name="gnd" id="optionsRadios2" value="female">
                     Female
                    </label>
                  </div>
                  <div class="form-check disabled">
                  <label class="form-check-label">
                      <input type="radio" class="form-check-input" name="gnd" id="optionsRadios3" value="others" >
                     Others
                    </label>
                  </div>
                </fieldset>
                <div class="form-group">
                    <label for="exampleInputEmail1">age</label>
                    <input type="email" class="form-control" name="age" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter age">
	        </div>
            	<div class="form-group">
                    <label for="exampleInputEmail1">last found</label>
                    <input type="date" class="form-control" name="" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter name">
	        </div>
                 <div class="form-group">
                <label for="exampleInputFile">Add photo</label>
                <input type="file" class="form-control-file" id="exampleInputFile" aria-describedby="fileHelp">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
	</div>

    
  </div>
</div>
<%
    %>
    
    
<footer class="container-fluid">
  <p>Footer Text</p>
</footer>

</body>
</html>
