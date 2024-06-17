<?php
session_start();
if(!isset($_SESSION['admin_username'])) {
    header("Location: login.php");
    exit();
}
include("inc_koneksi.php");

$result = $conn->query("SELECT * FROM silabus");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Silabus</title>
</head>
<body>
    <h1>Silabus</h1>
    <nav>
        <ul>
            <li><a href="index.php">Landing Page</a></li>
            <li><a href="data_siswa.php">Data Siswa</a></li>
            <li><a href="silabus.php">Silabus</a></li>
            <li><a href="quiz.php">Quiz</a></li>
            <li><a href="logout.php">Logout</a></li>
        </ul>
    </nav>

    <table border="1">
        <tr>
            <th>ID</th>
            <th>Kelas</th>
            <th>Deskripsi</th>
        </tr>
        <?php while($row = $result->fetch_assoc()) { ?>
        <tr>
            <td><?php echo $row['id']; ?></td>
            <td><?php echo $row['kelas']; ?></td>
            <td><?php echo $row['deskripsi']; ?></td>
        </tr>
        <?php } ?>
    </table>
</body>
</html>
