<?php
include "../database.php";
?>

<?php
class user
{
    private $db;
    public function __construct()
    {
        $this->db = new Database();
    }
    public function show_user()
    {
        $query = "SELECT * FROM user1 ORDER BY userID ASC";
        $result = $this->db->select($query);
        return $result;
    }
    public function check_already($username)
    {
        $query = "SELECT * FROM user1 WHERE username ='$username'";
        $result = $this->db->select($query);
        if ($result) {
            if (mysqli_num_rows($result) > 0) {
                return false;
            } else {
                return true;
            }
        }
    }

    public function insert_user($firstname, $lastname, $username, $password)
    {

        $query = "INSERT INTO user1 (firstname, lastname, username, `password`) 
        VALUES ('$firstname', '$lastname', '$username', '$password')";
        $result = $this->db->insert($query);
        return $result;
    }
    
}
?> 
