<?php
require_once('connection.php');


$sql= "SELECT * FROM archive_types WHERE number_of_archives=(SELECT max(number_of_archives) FROM archive_types)";  //bring last table name entered to archive types
$result = mysqli_query($conn,$sql);
if($result === FALSE) { 
    echo "Trying";
    die(); // TODO: better error handling
    echo "Trying";
}
//To get the names of the columns
$namee2=$_POST[$namee1];

$sql = 'DESCRIBE '.$namee2;
$result = mysqli_query($con, $sql);
$rows = array();
while($row = mysqli_fetch_assoc($result)) {
  $rows[] = $row['Field'];
}

while ($row = mysqli_fetch_array($result)) 
{
    $x= $row['type_name'];

    mysqli_query($conn, "SELECT * FROM $x");             // Get number of columns 
    $y = mysqli_field_count($conn); 

    $result_2 = mysqli_query($conn,"INSERT INTO $x(field_1) values ('')"); // i just insert a random row so i can update it later 


    $j= $y -3 ;          //i removed primary key and location and new . 
    for($i=1 ; $i<=$j ; $i++)
        {   
            $holding_place = 'detail'.$i;
            $detail = $_POST[$holding_place] ; 

           
          
           $sql = " ALTER TABLE $namee2
           RENAME COLUMN OldColumnName TO NewColumnName;  UPDATE $x SET field_$i='$detail' ";
                //this function udates an already existing row , so i will insert a random row before the for so i can update it here \
            $result_1 = mysqli_query($conn,$sql) ; 

        }


}       
$y = $j ; 
$sql = "UPDATE $x SET field_$y='location' ";     
$result_1 = mysqli_query($conn,$sql) ; 
        
        echo "<script> location.href='insert_archive/index.php'</script>"; 


?>