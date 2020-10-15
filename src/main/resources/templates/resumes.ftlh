<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title style="  padding-top: 50px;
    padding-bottom: 70px;
    font-weight: 700;
    padding-left: 30px;">search</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="../static/css/search.css">
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
            integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
            crossorigin="anonymous"></script>
    <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
            crossorigin="anonymous">

    </script>


</head>
<body style="background-color: #d1eced ">
<header style=" background-color: #fff;">
</header>

<script type="text/javascript" language="javascript">


    function getResume() {
        localStorage.removeItem("token")
        if (localStorage.getItem("token") == null) {
            let request = new XMLHttpRequest();
            let id = document.getElementById("resume_id").value;
            request.open("GET", "/signOut");
            request.send();
            location.replace("/resume/" + id);
        }
    }
</script>
<main>
    <div>
        <h1>Поиск по ID</h1>
        <input id="resume_id" type="text">
        <button onclick="getResume()">Нажать</button>
    </div>
    <a href="/save/">Добавить резюме</a>
    <div class="row offset-1 mt-5 mb-4">
        <h2>Резюме</h2>
    </div>
    <div class="row justify-content-center align-items-center flex-column carousel" id="results">
        <#list resumes as resume>
            <p>Id: <a href="/resume/${resume.id}">${resume.id}</a></p>
        </#list>
    </div>

</main>
</body>
</html>