<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="src/css/style.css">
    <script src="https://kit.fontawesome.com/5832cfab36.js" crossorigin="anonymous"></script>
    
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
            <h1>Assignments</h1>
            <div class="status">
                <img class="bell" src="./src/img/app/bell.svg" alt="">
                <img src="./src/img/app/profile.svg" alt="">
                <h2 class="username">Teacher Name</h2>
            </div>
        </header>
 
<!-- selected assignments -->
        <section class="assignments">
        <?php
		$query = "SELECT * from assignments WHERE assignmentsClassID = 2 ";
		$result = mysqli_query($conn, $query);
		
		while($row = mysqli_fetch_array($result)) {
			?>
            <div class="assignment-card">
                
                <div class="content-card-assignment">
                    <h2><?php echo $row['assignmentsTitle']?> </h2>
                    <p> 
                        <?php echo $row['assignmentsDesc'] ?>
                    </p>
                </div>
                <div class="btn-assignment">
                    <!-- button for delete assignments -->
                    <a href="process.php?del=<?php echo $row['assignmentsID'];?>" id="btn-delet-assignment" class="btn-delet-assignment">
                    <i style="padding-top: 1em;" class="fas fa-trash-alt"></i>
                    </a>
                    <!-- button for update -->     
                    <a class="btn-add-assignment" href="assignments-update.php?edit=<?php echo $row['assignmentsID'];?>"><i style="padding-top: 1em;" class="far fa-edit"></i></a>
                </div>
            </div>
            <?php
                }
            ?>

        </section>
        <!-- button for add assignment -->
        <button id="btn-modal"  class="btn-add-assignment">ADD NEW ASSIGNMENT</button>
         <!-- modal add assignments -->
        <div id="modal" class="modal-add">           
                <form class="modal-content-add" action="process.php" method="POST">
                    <h1>Add assignments</h1>
                    <label for="class-name">Class Name</label>
                    <input type="text" name="class-name">
                    <label for="assignments-title">Assignment Title</label>
                    <input type="text" name="assignments-title" >
                    <label for="assignments-desc">Assignment Description</label>
                    <textarea name="assignments-desc"  id="" cols="30" rows="3"></textarea>
                    <button class="btn-insert" name="btn-insert">Add</button>              
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
<script src="./src/js/tchboard-modal.js"></script>
</html>