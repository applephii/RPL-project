<?php
session_start();
if (!isset($_SESSION['guru_username'])) {
    header("Location: login.php");
    exit();
}
include("inc_koneksi.php");

$result = $conn->query("SELECT * FROM quiz");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quiz</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.php">Guru Dashboard</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item"><a class="nav-link" href="index.php">Landing Page</a></li>
                        <li class="nav-item"><a class="nav-link" href="data_siswa.php">Data Siswa</a></li>
                        <li class="nav-item"><a class="nav-link" href="silabus.php">Silabus</a></li>
                        <li class="nav-item"><a class="nav-link active" href="quiz.php">Quiz</a></li>
                        <li class="nav-item"><a class="nav-link" href="logout.php">Logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <main class="container mt-5">
        <h1>Quiz</h1>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nama Quiz</th>
                    <th>Deskripsi</th>
                    <th>Link</th>
                </tr>
            </thead>
            <tbody>
                <?php while($row = $result->fetch_assoc()) { ?>
                <tr>
                    <td><?php echo $row['id']; ?></td>
                    <td><?php echo $row['nama_quiz']; ?></td>
                    <td><?php echo $row['deskripsi']; ?></td>
                    <td><a href="<?php echo $row['link']; ?>" target="_blank">Link</a></td>
                </tr>
                <?php } ?>
            </tbody>
        </table>
    </main>
    
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js"></script>
</body>
</html>
