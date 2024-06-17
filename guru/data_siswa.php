<?php
session_start();
if(!isset($_SESSION['admin_username'])) {
    header("Location: login.php");
    exit();
}
include("inc_koneksi.php");

$result = $conn->query("SELECT * FROM siswa");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Data Siswa</title>
</head>
<body>
    <h1>Data Siswa</h1>
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
            <th>Nama</th>
            <th>Kelas</th>
        </tr>
        <?php while($row = $result->fetch_assoc()) { ?>
        <tr>
            <td><?php echo $row['id']; ?></td>
            <td><?php echo $row['nama']; ?></td>
            <td><?php echo $row['kelas']; ?></td>
        </tr>
        <?php } ?>
    </table>
</body>
</html>
