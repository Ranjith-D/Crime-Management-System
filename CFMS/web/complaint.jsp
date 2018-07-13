<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connect.jsp" %>
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
	<div class="col-sm-9"><br><br>
		<div>
                <form action=".jsp">
                   <div class="form-group">
					<label for="exampleSelect1">Select type</label>
					<select class="form-control" id="type">
					  <option>Murder</option>
					  <option>Theft</option>

					</select>
				  </div>
                  <div class="form-group">
                    <label for="pwd">date</label>
                    <input type="date" name="date" class="form-control" id="date">
                  </div>
                   <div class="form-group">
					<label for="exampleTextarea">Description</label>
					<textarea class="form-control" name="desc" id="desc" rows="3"></textarea>
				  </div>
                  <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
	</div>

    
  </div>
</div>

    
    
<footer class="container-fluid">
  <p>Footer Text</p>
</footer>

</body>
</html>
