<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Резюме</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/resume.css">
</head>
<body>

<header>
</header>
<main>
    <div class="container-fluid">
        <div class="row justify-content-center text-center">
            <div class="col-sm-10 profile">
                <div class="row text-center justify-content-center">
                    <h1 id="name" class="mt-2">${resume.lastName} ${resume.firstName} ${resume.patronymic}</h1>
                </div>
                <div class="row">
                    <p id="text-about" class="offset-1 col-md-10 mt-4 text-justify">Навыки: ${resume.skillList}</p>
                </div>
                <div class="row">
                    <p id="text-about" class="offset-1 col-md-10 mt-4 text-justify">Опыт
                        работы: ${resume.workExperience}</p>
                </div>
                <div class="row">
                    <p id="text-about" class="offset-1 col-md-10 mt-4 text-justify">Контакты: ${resume.contacts}</p>
                </div>
                <div class="row">
                    <a href="/edit/${resume.id}"><p id="text-about" class="offset-1 col-md-10 mt-4 text-justify">
                            Изменить</p>></a>
                </div>
                <div class="row">
                    <a href="/delete/${resume.id}"><p id="text-about" class="offset-1 col-md-10 mt-4 text-justify">
                            Удалить</p>></a>
                </div>
            </div>
        </div>

    </div>
    </div>
</main>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>

</body>
</html>