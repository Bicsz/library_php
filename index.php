<!DOCTYPE html>
<html>
  <header>
    <meta charset="utf-8">
    <title>Самый злостный читатель</title>
  </header>
  <body>
    <?php include("functions/main.php"); ?>
    <?php
    $library = new library();
    $library->libraryTopReader();
    ?>
  </body>
<html>
