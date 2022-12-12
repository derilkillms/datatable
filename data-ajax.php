<?php


include 'config.php';



$allquery = "SELECT * FROM `dl_customer`";
$getall =  mysqli_query($con,$allquery);

$totalFiltered= (mysqli_num_rows($getall));

$requestData= $_REQUEST;


$queryna = "SELECT * FROM `dl_customer`";

if( !empty($requestData['search']['value']) ) {

	$queryna.=" WHERE ( name LIKE '%".$requestData['search']['value']."%' ) ";    
	
	
}



$queryna .= " ORDER BY id DESC";

$gettwo =  mysqli_query($con,$queryna);
$totalFiltered =  (mysqli_num_rows($gettwo));

$queryna .= " LIMIT ".$requestData['start']." ,".$requestData['length']."";
$result = mysqli_query($con,$queryna);


$no=$requestData['start']+1;


$outpenranking = array();
foreach ($result as $key=>$row) {
	
	$getcustomer=array();
	$getcustomer[] = $no++;
	$getcustomer[] = $row['name'];
	$getcustomer[] = $row['country'];
	$getcustomer[] = $row['phone'];
	$getcustomer[] = $row['address'];
	$getcustomer[] = $row['email'];
	
	
	$outpenranking[]=$getcustomer;

}




$outputcustomer = array(
	'draw'=>intval( $requestData['draw'] ),
	'recordsTotal'=> intval($totalFiltered),
	'recordsFiltered'=> intval($totalFiltered),
	'data'=>$outpenranking
);
echo json_encode($outputcustomer);