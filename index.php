<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<style>
  /* Icon when the collapsible content is shown */
  .btn:after {
    font-family: "Glyphicons Halflings";
    content: "\e114";
    float: right;
    margin-left: 15px;
  }
  /* Icon when the collapsible content is hidden */
  .btn.collapsed:after {
    content: "\e080";
  }


.panel-heading:hover, .panel-heading:active {background: #f5dcdc; border-color: #aba8a8;}
</style>
</head>
<body>
<div class="col-sm-12" id="banner"><image src="banner.png" style="width:100%;"/></div>
<?php
   $mysqli = new mysqli("localhost","root","","enquiries");

if ($mysqli -> connect_errno) {
  echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
  exit();
}

$sql = "SELECT id,first_name,last_name, comment FROM enquiries ORDER BY datetime desc";


if ($result = $mysqli -> query($sql)) {
?>

<div class="container">
 <p><h2>Enquiries</h2></p>


<?php
  while ($row = mysqli_fetch_array($result)) {

  $cid = "collapse".$row["id"];
  ?>

 
 
<div class="panel-group" id="accordion">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#<?php echo $cid;?>">
<?php echo $row["first_name"]." ".$row["last_name"]; ?></a>
        </h4>
      </div>
      <div id="<?php echo $cid;?>" class="panel-collapse collapse">
        <div class="panel-body"><p><?php echo $row["comment"]; ?><p></div>
      </div>
    </div>
    
  </div> 


 <?php
}
  $result -> free_result();
}

$mysqli -> close();

?> 
</div>  

</body>
</html>
