<?php 
    $bdd = new PDO('mysql:host=localhost;dbname=tp09web;charset=utf8', 'root','');
?>
<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="utf-8" />
		<link rel="stylesheet" type="text/css" href="css/style.css" /> 
		<title>Connexion</title>
    </head>
    <body>
		<div class=presentation>Image de presentation</div>
		<div class=page>
			<div class=LECENTRE>
				<div class=description> 
					<div class=PHOTO> deuxieme ok </div>
					<div class=TITRE> troisieme ok </div>
					<div class=TEXTE> quatrieme ok </div>
					<div class=OEUVRES> Mes oeuvres </div>
                    <div class=FILTRE> FILTRE</div>
                        <div class=ANNEE> ANNEE
                            <?php
                                $reponse= $bdd->query('SELECT annee FROM Oeuvre ORDER BY annee DESC');
                                while($date=$reponse->fetch())
                                {
                            ?>
                                <input type="checkbox"><label><?php echo $date['annee']; ?></label><br>
                            <?php        
                                }
                            ?>
                        </div>

                        <div class=THEME>THEME
                            <?php 
                                $reponse= $bdd->query('SELECT libelle FROM Theme ORDER BY libelle DESC');
                                while($theme=$reponse->fetch())
                                {
                            ?>
                                <input type="checkbox"><label><?php echo $theme['libelle']; ?></label><br>
                            <?php
                                }
                            ?>         
                        </div>
					<div class=CARRE1> </div>
					<div class=CARRE2> </div>
					<div class=CARRE3> </div>
					<div class=CARRE4> </div>
					<div class=CARRE5> </div>
					<div class=CARRE6> </div>
				</div>
			</div>
		</div>
        <div class=conteneur>
            <div class=contenu>
                <div class=presentation>
				
				
                    
                </div>
            </div>
        </div>
    </body>
</html>