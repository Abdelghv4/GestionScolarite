
<?php
    require_once('identifier.php');
?>	
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="https://kit.fontawesome.com/1fafa1f3c8.js" crossorigin="anonymous"></script>
	<title>Menu</title>

	<style>
/*@import url('https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap');*/

*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  list-style: none;
  text-decoration: none;
  font-family: 'Josefin Sans', sans-serif;
}

body{
   background-color: #f3f5f9;
}

.wrapper{
  display: flex;
  position: relative;
}

.wrapper .sidebar{
  width: 200px;
  height: 100%;
  background: #1562A7;
  padding: 30px 0px;
  position: fixed;
}

.wrapper .sidebar h2{
  color: #fff;
  text-transform: uppercase;
  text-align: center;
  margin-bottom: 30px;
}

.wrapper .sidebar ul li{
  padding: 15px;
  border-bottom: 1px solid #1562A7;
  border-bottom: 1px solid rgba(0,0,0,0.05);
  border-top: 1px solid rgba(255,255,255,0.05);
}    

.wrapper .sidebar ul li a{
  color: #bdb8d7;
  display: block;
}

.wrapper .sidebar ul li a .fas{
  width: 25px;
}

.wrapper .sidebar ul li:hover{
  background-color: #1562A7;
}
    
.wrapper .sidebar ul li:hover a{
  color: #fff;
}
 
/*.wrapper .sidebar .social_media{
  position: absolute;
  bottom: 0;
  left: 50%;
  transform: translateX(-50%);
  display: flex;
}

.wrapper .sidebar .social_media a{
  display: block;
  width: 40px;
  background: #1562A7;
  height: 40px;
  line-height: 45px;
  text-align: center;
  margin: 0 5px;
  color: #bdb8d7;
  border-top-left-radius: 5px;
  border-top-right-radius: 5px;
}

.wrapper .main_content{
  width: 100%;
  margin-left: 200px;
}

.wrapper .main_content .header{
  padding: 20px;
  background: #fff;
  color: #717171;
  border-bottom: 1px solid #e0e4e8;
}

.wrapper .main_content .info{
  margin: 20px;
  color: #717171;
  line-height: 25px;
}

.wrapper .main_content .info div{
  margin-bottom: 20px;
}

@media (max-height: 300px){
  .social_media{
    display: none !important;
  }
}*/

		</style> 
</head>
<body>
<div class="wrapper">
    <div class="sidebar">
        <h2>Education</h2>
        <ul>
		<li><a href="filieres.php"><i class="fas fa-tags"></i>Filières </a></li> 
	<li><a href="etudiants.php"><i class="fa fa-id-card"></i> Etudiants</a></li>
	<li><a href="enseignant.php"><i class="fa fa-chalkboard-teacher"></i> Enseignants</a></li>
	<li><a href="matieres.php"><i class="fa-brands fa-markdown"></i> Matiéres</a></li>
	<li><a href="programmes.php"><i class="fa fa-product-hunt"></i> Programmes</a></li>
	<li><a href="emplois.php"><span class="glyphicon glyphicon-calendar"></span> Emplois</a></li>
	<li><a href="paiement.php"><i class="fa-solid fa-coins"></i> Paiement</a></li>
	<li><a href="utilisateurs.php"><i class="fa-solid fa-users"></i>  Utilisateurs</a></li>

  <br> <br>   <br> <br>   <br> 


		<li>
				<a href="editerUtilisateur.php?idUser=<?php echo $_SESSION['user']['iduser'] ?>">
                    <i class="fa fa-user-circle-o"></i>
					<?php echo  ' '.$_SESSION['user']['login']?>
				</a> 
			</li>
			
			<li>
				<a href="seDeconnecter.php">
                    <i class="fa fa-sign-out"></i>
					 Se déconnecter
				</a>
			</li>
							
      </div>






        </ul> 
       
    </div>
   

<!--<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
	<div class="navbar-header">
	<a href="../index.php" class="navbar-brand"  > Gestion de Scolarites</a>

		</div>
		<ul class="nav navbar-nav">
    <li><a href="filieres.php"><i class="fas fa-tags"></i> Filières </a></li> 
	<li><a href="etudiants.php"><i class="fa fa-id-card"></i> Etudiants</a></li>
	<li><a href="enseignant.php"><i class="fa fa-chalkboard-teacher"></i> Enseignants</a></li>
	<li><a href="matieres.php"><i class="fa-brands fa-markdown"></i> Matiéres</a></li>
	<li><a href="programmes.php"><i class="fa fa-product-hunt"></i> Programmes</a></li>
	<li><a href="emplois.php"><span class="glyphicon glyphicon-calendar"></span> Emplois</a></li>
	<li><a href="paiement.php"><i class="fa-solid fa-coins"></i> Paiement</a></li>
	<li><a href="utilisateurs.php"><i class="fa-solid fa-users"></i>  Utilisateurs</a></li>
	
	
</ul>




<ul class="nav navbar-nav navbar-right">
					
			<li>
				<a href="editerUtilisateur.php?idUser=<?php echo $_SESSION['user']['iduser'] ?>">
                    <i class="fa fa-user-circle-o"></i>
					<?php echo  ' '.$_SESSION['user']['login']?>
				</a> 
			</li>
			
			<li>
				<a href="seDeconnecter.php">
                    <i class="fa fa-sign-out"></i>
					&nbsp Se déconnecter
				</a>
			</li>
							
		</ul>-->
</div>
</nav>


	
</body>
</html>




