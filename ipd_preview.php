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
				<div style="font:bold 35px 'Times New Roman';text-align: start;position: relative;left: 12%">Rampari Ausadhalaya</div>
				
				<div style="font:bold 20px 'Times New Roman';text-align: start;position: relative;left: 12%">
				(A Unit of Shree Pradhan Healthcare Pvt Ltd)</br>
				</br>
				</div>
				
				<div style="font:bold 18px 'Times New Roman';text-align: start;position: relative;left: 12%">
					N.H-28, Khabra Muzaffarpur, Bihar-843136</br>
					Contact:9199654999, shreepradhanhospital@gmail.com  
				</div>                       
				
				<br>
			
				<?php 
					$invoice_number = $_GET['pdf'];
					include("dbcon.php");
					$select_sql = "SELECT * FROM sales where ipd = '$invoice_number'";
					$select_query =mysqli_query($con,$select_sql);
					while($row =mysqli_fetch_array($select_query))
						{			 
							$date = $row['Date'];
							$paid_amount = $row['paid_amount'];
							$bill_to = $row['bill_to'];
							$id= $row['id'];
							break;
						}		  
				?>

					<form method="POST" action="home.php">
						<table border="1" cellpadding="7" cellspacing="0" style="font-family:arial; font-size:20px; text-align:left;" width="70%">
							<tr>
								<strong><h1>Bill To: <?php echo $bill_to?></h1></strong>
								<strong><h1>Bill Number: <?php echo $id?></h1></strong>
								<?php
									if ($row['ipd']>0){
								?>
									<strong><h1>IPD Number: <?php echo $row['ipd']?></h1></strong>
								<?php
									}
								?>								
								<strong><h1><?php echo date('d-M-Y', strtotime($date))?></h1></strong></br></br>
							</tr>
							
							<thead>
								<tr>
									<th> S.No </th>
									<th> Date </th>
									<th> Bill NO</th>
									<th> Type </th>
									<th> Total Amount </th>
									<th> Paid Amount </th>
									<th> Due Amount </th>
								</tr>
							</thead>
						
							<tbody>
								<?php
									// include("dbcon.php");
									$select_sql = "SELECT * FROM sales where ipd = '$invoice_number' and sale_type='sell' order by id";
									$select_query =mysqli_query($con,$select_sql);
									$i=1;
									$total_due=0;
									while($row =mysqli_fetch_array($select_query)):							
								?>
								
								
								<tr class="record">
									<td><h4><?php echo $i;$i++;?></h4></td>
									<td><h4><?php echo $row['Date'];?></h4></td>
									<td><h4><?php echo $row['id']; ?></h4></td>
									<td><h4><?php echo $row['sale_type']; ?></h4></td>
									<td><h4><?php echo 'Rs',' '.$row['total_amount']; ?></h4></td>
									<td><h4><?php echo 'Rs',' '.$row['paid_amount']; ?></h4></td>
									<td><h4><?php $due= $row['total_amount'] - $row['paid_amount']; echo 'Rs',' '.$due; $total_due=$total_due+$due;?></h4></td>						  
								</tr>
						
								<?php endwhile;?>
								

								<tr>
									<td colspan="6" style=" text-align:right;"><strong style="font-size: 18px;">&nbsp;&nbsp;Total: &nbsp;</strong></td>
								
									<td colspan="6"><strong style="font-size: 10px;"><h1>
										<?php
										$select_sql = "SELECT sum(total_amount) as total_amount, sum(paid_amount) as paid_amount from sales where ipd = '$invoice_number' and sale_type='sell'";

										$select_sql = mysqli_query($con,$select_sql);

										while($row = mysqli_fetch_array($select_sql))
											{
												$total_amount =  $row['total_amount'];
												$sell_change_amount= round($total_amount);
												$total_amount = round($total_amount);
												$total_amount=number_format($total_amount,2);
												echo 'Rs'.' '.$total_amount;
											}
										?>
										</h1></strong></td>
								</tr>
								

								<tr>
									<td colspan="6" style=" text-align:right;"><strong style="font-size: 18px;">&nbsp;&nbsp;Paid Amount: &nbsp;</strong></td>
									
									<td colspan="6"><strong style="font-size: 10px;"><h1>
										<?php
											$select_sql = "SELECT sum(total_amount) as total_amount, sum(paid_amount) as paid_amount from sales where ipd = '$invoice_number' and sale_type='sell'";
											$select_sql = mysqli_query($con,$select_sql);
											while($row = mysqli_fetch_array($select_sql))
												{
													$paid_amount =  $row['paid_amount'];
													$return_change_amount= round($paid_amount);
													$paid_amount = round($paid_amount);
													$paid_amount=number_format($paid_amount,2);
													echo 'Rs'.' '.$paid_amount;
												}
										?>
									</h1></strong></td>
								</tr>
			   
										<tr>
										  <td colspan="6" style=" text-align:right;"><strong style="font-size: 18px;">&nbsp;&nbsp;Due Amount: &nbsp;</strong></td>
										  <td colspan="6"><strong style="font-size: 10px;"><h1>
										  <?php
											$selldue_amount= round($sell_change_amount - $return_change_amount);
											$selldue_amount=number_format($selldue_amount,2);
											echo 'Rs'.' '.($selldue_amount);
										  
										  ?>
										  </h1></strong></td>
										</tr>
			  
							</tbody>
  
  
  
							<tbody>
								<?php
									// include("dbcon.php");
									$select_sql = "SELECT * FROM sales where ipd = '$invoice_number' and sale_type='return' order by id";
									$select_query =mysqli_query($con,$select_sql);
									$i=1;
									while($row =mysqli_fetch_array($select_query)):		 
								?>
								
								<tr class="record">
									<td><h4><?php echo $i;$i++;?></h4></td>
									<td><h4><?php echo $row['Date'];?></h4></td>
									<td><h4><?php echo $row['id']; ?></h4></td>
									<td><h4><?php echo $row['sale_type']; ?></h4></td>
									<td><h4><?php echo 'Rs',' '.$row['total_amount']; ?></h4></td>
									<td><h4><?php echo 'Rs',' '.$row['paid_amount']; ?></h4></td>
									<td><h4><?php echo 'Rs',' '.$row['total_amount'] - $row['paid_amount']; ?></h4></td>
									
									<?php $finaldue= $selldue_amount - $row['paid_amount'];?>
									        
								</tr>
								<?php endwhile;?>

									<tr>
										<td colspan="6" style=" text-align:right;"><strong style="font-size: 18px;">&nbsp;&nbsp;Final Amount: &nbsp;</strong></td>
										<td colspan="6"><strong style="font-size: 10px;"><h1>
										<?php
											$FinalDueAmount= round($finaldue);
											$FinalDueAmount=number_format($FinalDueAmount,2);
											echo 'Rs'.' '.($FinalDueAmount);										  
										?>
										</h1></strong></td>
									</tr>
										
								<?php 
									if ($row['total']>=1){
								?>	
									
								<tr>
									<td colspan="6" style=" text-align:right;"><strong style="font-size: 18px;">&nbsp;&nbsp;Total: &nbsp;</strong></td>
									
									<td colspan="6"><strong style="font-size: 10px;"><h1>
									<?php
										$select_sql = "SELECT sum(total_amount) as total, sum(paid_amount) as paid from sales where ipd = '$invoice_number' and sale_type='return'";
										$select_sql = mysqli_query($con,$select_sql);
										while($row = mysqli_fetch_array($select_sql))
											{
												$amount =  $row['total'];
												$change_amount= round($amount);
												$amount = round($amount);
												$amount=number_format($amount,2);
												echo 'Rs'.' '.$amount;
											}
									?>
									</h1></strong></td>
								</tr>
								
								
								<tr>
									<td colspan="6" style=" text-align:right;"><strong style="font-size: 18px;">&nbsp;&nbsp;Final Amount: &nbsp;</strong></td>
									
									<td colspan="6"><strong style="font-size: 10px;"><h1>
									<?php
										$final_amount = $amount - $total_due;
										$final_amount=number_format($final_amount,2);
										echo 'Rs'.' '.($final_amount);
									?>
									</h1></strong></td>
								</tr>
								<?php
									}
								?>
			  
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