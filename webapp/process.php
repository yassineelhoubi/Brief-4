
<?php
require_once ('connection-db.php');
/* process to add assignments */
if(isset($_POST['btn-insert'])){
    $assignments_title = $_POST['assignments-title'];
    $assignments_desc = $_POST['assignments-desc'];
    $class_name=$_POST['class-name'];
     
    if($class_name == "ada lovelace" ){
        $assignmentsClassId = 1;
    }else if($class_name == "margaret hamelton"){
        $assignmentsClassId = 2;
    }elseif($class_name == "alan turing"){
        $assignmentsClassId = 3;
    }
    $insert = "INSERT INTO assignments (`assignmentsClassId`, `assignmentsTitle`, `assignmentsDesc`) VALUES ($assignmentsClassId,'$assignments_title','$assignments_desc')";
    mysqli_query($conn,$insert);
    header('location:tchboard.php');
}
/* delete assignments */
if (isset($_GET['del'])) {
    $id = $_GET['del'];
    mysqli_query($conn, "DELETE FROM assignments WHERE assignmentsID=$id"); 
    header('location: tchboard.php');
}
/* update assignments */
if (isset($_POST['btn-update'])) {
    $assignmentsID = $_POST['assignmentsID'];
    $assignmentsTitle = $_POST['assignments-title'];
    $assignmentsDesc = $_POST['assignments-desc'];

    mysqli_query($conn, "UPDATE assignments SET assignmentsTitle='$assignmentsTitle', assignmentsDesc='$assignmentsDesc' WHERE assignmentsID=$assignmentsID");
    header('location: tchboard.php');
}
?>