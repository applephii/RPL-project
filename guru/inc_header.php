<?php 
session_start();
if($_SESSION['guru_username'] == ''){
    header("location:login.php");
    exit();
}
include("../inc/inc_koneksi.php");
include("../inc/inc_fungsi.php");
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Guru SPS Kembang Tebu</title>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    <link href="../css/summernote-image-list.min.css">
    <script src="../js/summernote-image-list.min.js"></script>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="<?php echo url_dasar()?>/css/style.css">
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap");

        * {
            text-decoration: none;
            margin: 0px;
            padding: 0px;
        }

        body {
            margin: 0px;
            padding: 0px;
            font-family: "Poppins", sans-serif;
        }

        .wrapper {
            width: 1100px;
            margin: auto;
            position: relative;
        }

        .logo a {
            font-size: 50px;
            font-weight: 800;
            float: left;
            font-family: "Poppins", sans-serif;
            color: #364f6b;
        }

        .menu {
            float: right;
        }

        nav {
            width: 100%;
            margin: auto;
            display: flex;
            line-height: 80px;
            position: sticky;
            position: -webkit-sticky;
            top: 0;
            background: #ffffff;
            z-index: 1;
            border-bottom: 1px solid #364f6b;
        }

        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }

        nav ul li {
            float: left;
        }

        nav ul li a {
            color: black;
            font-weight: bold;
            text-align: center;
            padding: 0px 16px 0px 16px;
            text-decoration: none;
        }

        nav ul li a:hover {
            text-decoration: underline;
        }

        section {
            margin: auto;
            display: flex;
            margin-bottom: 50px;
        }

        .kolom {
            margin-top: 50px;
            margin-bottom: 50px;
        }

        .kolom .deskripsi {
            font-size: 20px;
            font-weight: bold;
            font-family: "Poppins", sans-serif;
            color: #364f6b;
        }

        h2 {
            font-family: "Poppins", sans-serif;
            font-weight: 800;
            font-size: 45px;
            margin-bottom: 20px;
            color: #364f6b;
            width: 100%;
            line-height: 50px;
        }

        a.tbl-biru {
            background: #3f72af;
            border-radius: 20px;
            margin-top: 20px;
            padding: 15px 20px 15px 20px;
            color: #ffffff;
            cursor: pointer;
            font-weight: bold;
        }

        a.tbl-biru:hover {
            background: #fc5185;
            text-decoration: none;
        }

        a.tbl-pink {
            background: #fc5185;
            border-radius: 20px;
            margin-top: 20px;
            padding: 15px 20px 15px 20px;
            color: #ffffff;
            cursor: pointer;
            font-weight: bold;
        }

        a.tbl-pink:hover {
            background: #3f72af;
            text-decoration: none;
        }

        p {
            margin: 10px 0px 10px 0px;
            padding: 10px 0px 10px 0px;
        }

        .tengah {
            text-align: center;
            width: 100%;
        }

        .tutor-list {
            width: 100%;
            position: relative;
            display: flex;
            flex-wrap: wrap;
        }

        .kartu-tutor {
            width: 20%;
            margin: 0 auto;
        }

        .kartu-tutor img {
            width: 80%;
            border-radius: 50%;
        }

        .kartu-tutor p {
            font-family: "Poppins", sans-serif;
            font-weight: 800;
            font-size: 25px;
            text-align: center;
            color: #364f6b;
        }

        .partner-list {
            width: 100%;
            position: relative;
            display: flex;
            flex-wrap: wrap;
        }

        .kartu-partner {
            width: 20%;
            margin: 0 auto;
        }

        .kartu-partner img {
            width: 150px;
            border-radius: 50%;
        }

        #contact {
            background: #dedede;
            padding: 50px 0px 50px 0px;
        }

        .footer {
            width: 100%;
            position: relative;
            display: flex;
            flex-wrap: wrap;
            margin: auto;
        }

        .footer-section {
            width: 20%;
            margin: 0 auto;
        }

        h3 {
            font-family: "Poppins", sans-serif;
            font-weight: 800;
            font-size: 30px;
            margin-bottom: 20px;
            color: #364f6b;
            width: 100%;
            line-height: 50px;
        }

        #copyright {
            text-align: center;
            width: 100%;
            padding: 50px 0px 50px 0px;
            margin-top: 50px;
        }

        @media screen and (max-width: 991.98px) {
            .wrapper {
                width: 90%;
            }

            .logo a {
                display: block;
                width: 100%;
                text-align: center;
            }

            nav .menu {
                width: 100%;
                margin: 0;
            }

            nav .menu ul {
                text-align: center;
                margin: auto;
                line-height: 60px;
            }

            nav .menu ul li {
                display: inline-block;
                float: none;
            }

            section {
                display: block;
            }

            section img {
                display: block;
                width: 100%;
                height: auto;
            }

            .kartu-tutor {
                width: 50%;
            }

            .kartu-partner {
                width: 50%;
            }
        }

        /* tambahan dari pendaftaran dan verifikasi */
        table {
            width: 600px;
        }

        @media screen and (max-width: 700px) {
            table {
                width: 90%;
            }
        }

        table td {
            padding: 5px;
        }

        td.label {
            width: 40%;
        }

        .input {
            border: 1px solid #cccccc;
            background-color: #dfdfdf;
            border-radius: 5px;
            padding: 10px;
            width: 100%;
        }

        input.tbl-biru {
            border: none;
            background-color: #3f72af;
            border-radius: 20px;
            margin-top: 20px;
            padding: 15px 20px 15px 20px;
            color: #ffffff;
            cursor: pointer;
            font-weight: bold;
        }

        input.tbl-biru:hover {
            background-color: #fc5185;
            text-decoration: none;
        }

        .error {
            padding: 20px;
            background-color: #f44336;
            color: #ffffff;
            margin-bottom: 15px;
        }

        .sukses {
            padding: 20px;
            background-color: #2196f3;
            color: #ffffff;
            margin-bottom: 15px;
        }

        .error ul {
            margin-left: 10px;
        }
    </style>
</head>


<body class="container">
<header>
        <nav>
            <div class="wrapper">
                <div class="logo"><a href="index.php">Guru</a></div>
                <div class="menu">
                    <ul>
                    <li><a href="index.php">Landing Page</a></li>
            <li><a href="data_siswa.php">Data Siswa</a></li>
            <li><a href="silabus.php">Silabus</a></li>
            <li><a href="quiz.php">Quiz</a></li>
            <li><a href="logout.php">Logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <main>