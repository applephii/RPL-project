<?php
session_start();
if(!isset($_SESSION['guru_username'])) {
    header("Location: login.php");
    exit();
}
include("inc_koneksi.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Landing Page</title>
</head>
<body>
    <h1>Welcome, <?php echo $_SESSION['guru_username']; ?></h1>
    <nav>
        <ul>
            <li><a href="index.php">Landing Page</a></li>
            <li><a href="data_siswa.php">Data Siswa</a></li>
            <li><a href="silabus.php">Silabus</a></li>
            <li><a href="quiz.php">Quiz</a></li>
            <li><a href="logout.php">Logout</a></li>
        </ul>
    </nav>

    <section>
        <h2>Data Siswa</h2>
        <!-- Fetch and display student data from database -->

        <h2>Silabus</h2>
        <!-- Fetch and display syllabus data from database -->

        <h2>Permainan</h2>
        <!-- List of available quizzes and games -->
    </section>
</body>
</html>
