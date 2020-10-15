<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Редактирование</title>
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
        <div class="row justify-content-center">
            <div class="col-sm-10 profile">

                <div class="row justify-content-center">
                    <h1 class="title">Резюме</h1>
                </div>
                <form action="/edit/" method="post">
                    <div class="row justify-content-center">
                        <input type="hidden" name="id" value=${id}>
                        <div class="col-12 text-box">
                            <h1 class="pod_title">Имя</h1>
                            <input id="name" type="text" class="form-control" name="firstName"/>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-12 text-box">
                            <h1 class="pod_title">Фамилия</h1>
                            <input id="name" type="text" class="form-control" name="lastName"/>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-12 text-box">
                            <h1 class="pod_title">Отчество</h1>
                            <input id="name" type="text" class="form-control" name="patronymic"/>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-12 text-box">
                            <h1 class="pod_title">Навыки</h1>
                            <input id="name" type="textarea" class="form-control" name="skillList"/>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-12 text-box">
                            <h1 class="pod_title">Опыт работы</h1>
                            <input id="name" type="textarea" class="form-control" name="workExperience"/>
                        </div>
                    </div>


                    <div class="row justify-content-center">
                        <div class="col-12 text-box">
                            <h1 class="pod_title">Контакты</h1>
                            <input id="name" type="textarea" class="form-control" name="contacts"/>
                        </div>
                    </div>
                    <button type="submit" class="but btn-info btn">Сохранить</button>
                </form>
            </div>
        </div>

    </div>

    </div>
</main>
<footer>
    <div class="container-fluid">
        <div class="row footer justify-content-center">
            <h2>Футер</h2>
        </div>
    </div>
</footer>

</body>
</html>