  <?php

session_start();

if(!isset($_SESSION['user_session'])){

    header("location:index.php");
}
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.css">
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="css/tcal.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/tcal.js"></script>
    <script type="text/javascript">

      function Clickheretoprint()
{ 
  var disp_setting="toolbar=yes,location=no,directories=yes,menubar=yes,"; 
      disp_setting+="scrollbars=yes,width=700, height=400, left=100, top=25"; 
  var content_vlue = document.getElementById("content").innerHTML; 
  
  var docprint=window.open("","",disp_setting); 
   docprint.document.open(); 
   docprint.document.write('</head><body onLoad="self.print()" style="width: 700px; font-size:11px; font-family:arial; font-weight:normal;">');          
   docprint.document.write(content_vlue); 
   docprint.document.close(); 
   docprint.focus(); 
}

      
    </script>
</head>
<body style="background-image: url('images/old_moon.png');">

  <div class="container">

  	<a href="index.php"><button class="btn btn-default"><i class="icon-arrow-left"></i> Back to Sales</button></a>

    <div id="content">
	<br>
	<div style="font:bold 35px 'Times New Roman';text-align: center">Rampari Ausadhalaya</div>
		<div style="font:bold 20px 'Times New Roman';text-align: center">
	(A Unit of Shree Pardhan Healthcare Pvt Ltd)</br>
  </br>
	</div>
  <div style="font:bold 18px 'Times New Roman';">
  N.H-28, Khabra Muzaffarpur, Bihar-843136</br>
  Contact:9199654999, shreepradhanhospital@gmail.com  
	</div>                       
	<br>
	<?php 
  $invoice_number = $_GET['pdf'];
  include("dbcon.php");

         $select_sql = "SELECT * FROM sales where invoice_number = '$invoice_number'";

         $select_query =mysqli_query($con,$select_sql);

          while($row =mysqli_fetch_array($select_query))
		  {
			 $date           = $row['Date'];
			$paid_amount   = $row['paid_amount'];
			$bill_to = $row['bill_to'];
			$id= $row['id'];
		  }
		  
	?>

  <form method="POST" action="home.php">
  	<table border="1" cellpadding="4" cellspacing="0" style="font-family:arial; font-size:20px; text-align:left;" width="80%">
      <tr>
       <strong><h1>Bill To:<?php echo $bill_to?></h1></strong>
       <strong><h1>Bill Number:<?php echo $id?></h1></strong> 
       <strong><h1><?php echo date('d-M-Y', strtotime($date))?></h1></strong></br></br>
      </tr>
		<thead>
			<tr>
				<th> Product Name </th>
				<th> Category</th>
				<th> Qty </th>
				<th> Price </th>
				<th> Amount </th>
			</tr>
		</thead>
    <tbody>
      <?php

        // include("dbcon.php");

         $select_sql = "SELECT * FROM on_hold where invoice_number = '$invoice_number'";

         $select_query =mysqli_query($con,$select_sql);

          while($row =mysqli_fetch_array($select_query)):
      ?>
        <tr class="record">
        <td><h4><?php echo $row['medicine_name'];?></h4>
          <input type="hidden" name="medicine_name[]" value="<?php echo $row['medicine_name']?>"></td>
          <input type="hidden" name="ex_date" value="<?php echo $row['expire_date']?>">
          <input type="hidden" name="ex_date" value="<?php echo $row['category']?>">
        <td><h5><?php echo $row['category']; ?></h5></td>
        <td><h5><?php echo $row['qty']."(".$row['type'].")"; ?></h5>
          <input type="hidden" name="qty[]" value="<?php echo $row['qty']."(".$row['type'].")"; ?>">
          <input type="hidden" name="bill_to" value="<?php echo $row['bill_to']?>">
        </td>
        <td>
        <?php
        echo "<h5>".'Rs'.' '.$row['cost']."<h5>";
        ?>
        </td>
        <td>
        <?php
         echo "<h5>".'Rs'.' '.$row['amount']."<h5>";
        ?>
        </td>
        </tr>
      <?php endwhile;?>

        <tr>
          <td colspan="3" style=" text-align:right;"><strong style="font-size: 18px;">&nbsp;&nbsp;Total: &nbsp;</strong></td>
          <td colspan="2"><strong style="font-size: 10px;">
          <?php

          $select_sql = "SELECT sum(amount) from on_hold where invoice_number = '$invoice_number'";

          $select_sql = mysqli_query($con,$select_sql);

          while($row = mysqli_fetch_array($select_sql)){

            $amount =  $row['sum(amount)'];
            $change_amount= round($amount);

            $amount = round($amount);
            $amount=number_format($amount,2);

            echo '<h1>'.'Rs'.' '.$amount.'</h5>';

          }
          
          ?>
          </strong></td>
        </tr>

         <tr>
          <td colspan="3" style=" text-align:right;"><strong style="font-size: 18px;">&nbsp;&nbsp;Paid Amount: &nbsp;</strong></td>
          <td colspan="2"><strong style="font-size: 10px;">
          <?php

				$change_paid= $paid_amount;

        $paid_amount = round($paid_amount);
        $paid_amount=number_format($paid_amount,2);
        echo '<h1>'.'Rs'.' '.$paid_amount.'</h3>';


          ?>
          </strong></td>
        </tr>
       
         <tr>
          <td colspan="3" style=" text-align:right;"><strong style="font-size: 18px;">&nbsp;&nbsp;Change Amount: &nbsp;</strong></td>
          <td colspan="2"><strong style="font-size: 10px;">
          <?php

        $change_amount= round($change_paid - $change_amount);
        $change_amount=number_format($change_amount,2);

         echo '<h1>'.'Rs'.' '.($change_amount).'</h3>';
          
          ?>
          </strong></td>
        </tr>
      
    </tbody>
  </table><br/>
  </div>

  <input type="hidden" name="paid_amount" value="<?php echo $paid_amount?>">
  <input type="hidden" name="invoice_number" value="<?php echo $invoice_number?>">
  <input type="hidden" name="date" value="<?php echo $date?>">
  <input type="hidden" name="bill_to" value="<?php echo $bill_to?>">
  <a href="javascript:Clickheretoprint()" class="btn btn-primary" style="float:right; margin-right:20%"> Print</a>

  </form>
  </body>
  </html>