

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container" style="border:solid 1px;width: 500px;align-content: center;padding: 50px">
    <h2>Transaction details</h2> <br><br>
  
  <form style="align-content: center" action="trans.jsp">
      <div class="form-group" style="align-content: center">
        <label for="usr">Amount:</label> <br>
      <input type="text" class="form-control" style = "width:400px;" name="amt">
    </div>
    
     <label class="radio-inline">
      <input type="radio" name="trans" value="Credit" checked>Credit
    </label>
      
    <label class="radio-inline">
        <input type="radio" name="trans" value="Debit">Debit
    </label> 
    
      <br><br> <br>
    <input type="submit" class="btn btn-info">  
      
  </form>
</div>
    
    
</body>
</html>
