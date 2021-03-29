<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Assignments</title>
    <link rel="stylesheet" href="src/css/style.css">
    <?php
    require 'connection-db.php';
    ?>
</head>
<body class="app">
<nav class="sidebar">

<div class="logo">
    <a href="index.html"><img class="menuico" src="./src/img/sidebar/home_white_24dp.svg" alt="">
    </a>
</div>

<div class="links">
    <a href="#">
        <img src="./src/img/sidebar/dashboard_white_24dp.svg" alt="">
    </a>
</div>

<a class="log-out" href="#"><img src="./src/img/sidebar/logout_white_24dp.svg" alt=""></a>
</nav>
 
    <main>
        <header>
            <h1>Update Assignments</h1>
            <div class="status">
                <img class="bell" src="./src/img/app/bell.svg" alt="">
                <img src="./src/img/app/profile.svg" alt="">
                <h2 class="username">Teacher Name</h2>
            </div>
        </header>
        <!-- php for update -->
        <?php 
            if (isset($_GET['edit'])) {
                $assignmentsID = $_GET['edit'];
                $result = mysqli_query($conn, "SELECT * FROM assignments WHERE assignmentsID=$assignmentsID");
                $roww = mysqli_fetch_array($result);
                $assignmentsTitle = $roww['assignmentsTitle'];
                $assignmentsDesc = $roww['assignmentsDesc'];
            }
        ?>
        <div class="container-update-assignments">
            <form class="update-assignments" action="process.php" method="POST">
                <input type="hidden" name="assignmentsID" value="<?php echo $assignmentsID; ?>">
                <label for="assignments-title">Assignment Title</label>
                <input value="<?php echo $assignmentsTitle ?>" type="text" name="assignments-title" >
                <label for="assignments-desc">Assignment Description</label>
                <textarea  name="assignments-desc"  id="" cols="30" rows="10"><?php echo $assignmentsDesc ?></textarea>
                <div class="blank"></div>
                <button class="btn-update" name="btn-update">update</button>              
            </form> 
        </div>
  

        <div class="blank"></div>
        <div class="ftr">
            <p>© 2021 Overseer. All rights reserved.</p>
            <p>Terms of Service Privacy Policy</p>
        </div>

        <div class="blank"></div>
    </main>
 

</body>
</html>