<?php
# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
$hostname_Master = "localhost";
$database_Master = "master";
$username_Master = "root";
$password_Master = "";
$Master = mysql_pconnect($hostname_Master, $username_Master, $password_Master) or trigger_error(mysql_error(),E_USER_ERROR);
$conn = mysql_connect($hostname_Master, $username_Master, $password_Master) or die("Could not connect to database");
mysql_select_db($database_Master, $Master) or die("Could not select database");

function registerUser($firstName, $lastName, $email, $password, $iduser) {
    $result = mysql_query("SELECT * FROM usuarios WHERE iduser = $iduser");
    if (mysql_num_rows($result) > 0) {
        // Пользователь с таким id уже зарегистрирован
        return false;
    } else {
        $hashedPassword = md5($password); // Хеширование пароля
        $insertQuery = "INSERT INTO usuarios (iduser, FirstName, LastName, Email, Password) VALUES ($iduser, '$firstName', '$lastName', '$email', '$hashedPassword')";
        $result = mysql_query($insertQuery);
        if ($result) {
            // Пользователь успешно зарегистрирован
            return true;
        } else {
            // Произошла ошибка при регистрации пользователя
            return false;
        }
    }
}
?>


