<?php

class library{

///подключение к БД
function connectToDB() {
    include_once ("BDconfig.php");
    static $link;
    if (!isset($link))
    {
      $link = mysql_connect($host, $user, $pswd) or die("Не могу соединиться с MySQL.");
      mysql_select_db($database) or die("Не могу подключиться к базе.");
      return $link;
    }
    else
      return $link;
}

///получаем топ читающего студента
function TakeStuds()
{

  $dbh = $this->connectToDB();//подключаемся к БД
  $query = "Select students.fio from students,booklog WHERE students.id=booklog.student_id group by booklog.student_id LIMIT 1";
  $res = mysql_query($query);
  while($row = mysql_fetch_array($res))
   return $row['fio'];  
}


///Основноя функция
public function libraryTopReader()
{
  $studs = $this->TakeStuds();//получаем персоны, сгруппированные по номерам телефонов
  echo "Самый злостный читатель: ".$studs."<br>\n";
  
}

}

 ?>
