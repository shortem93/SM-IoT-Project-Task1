<?php
$connection = new mysqli("localhost","root","","servomotors_db");
$sql1 = mysqli_query($connection,"SELECT servoMotor1,servoMotor2,servoMotor3,servoMotor4,servoMotor5,servoMotor6 FROM servomotors_table WHERE SMID=(SELECT MAX(SMID) FROM servomotors_table)");
$sql2 = mysqli_query($connection,"SELECT status FROM servomotorsstatus_table WHERE SMOOID=(SELECT MAX(SMOOID) FROM servomotorsstatus_table)");
$print_data1 = mysqli_fetch_row($sql1);
$print_data2 = mysqli_fetch_row($sql2);

if($print_data1>0){
echo 'motor1: ';
echo $print_data1[0];
echo '<br>';
echo 'motor2: ';
echo $print_data1[1];
echo '<br>';
echo 'motor3: ';
echo $print_data1[2];
echo '<br>';
echo 'motor4: ';
echo $print_data1[3];
echo '<br>';
echo 'motor5: ';
echo $print_data1[4];
echo '<br>';
echo 'motor6: ';
echo $print_data1[5];
echo '<br>';
} else {
    echo "No data have been saved<br>";
}

if($print_data2>0){
echo "On/Off: ";
echo $print_data2[0];
echo '<br>';
} else {
    echo "On/Off button have not triggered yet<br>";
}

?>