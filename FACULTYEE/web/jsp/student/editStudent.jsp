<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Training.by</title>
    <link href="js/bootstrap-3.3.2-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="js/bootstrap-3.3.2-dist/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
    <script src="js/script.js"></script>
    <script src="js/jquery-validation/dist/jquery.validate.min.js"></script>
</head>
<body>
<nav class="navbar navbar-my" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Training.by</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="controller?command=show_course">Список Курсов</a></li>
            </ul>
            <form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Искать">
                </div>
                <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span> Искать
                </button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" class="glyphicon glyphicon-user" data-toggle="dropdown"> ${user}<span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="controller?command=edit_page_student">Редактировать</a></li>
                        <li><a href="controller?command=show_cur_course">Записи на курсы</a></li>
                        <li class="divider"></li>
                        <li><a href="controller?command=logout">Выйти</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <form action="controller" method="POST" class="form" id="edit-form">
        <h3 class="form-title">Изменяйте данные студента</h3>
        <div class="message js-form-message"></div>
        <input type="hidden" name="command" value="edit_student_info" />
        <div class="form-group">
            Имя: <input type="text" name="name" class="form-input" value = ${first_name}>
        </div>
        <div class="form-group">
            Фамилия: <input type="text" name="surname" class="form-input" value = ${last_name}>
        </div>
        <div class="form-group">
            Логин: <input type="text" name="login" class="form-input" value = ${login}>
        </div>
        <div class="form-group">
            Пароль: <input type="text" name="password" value = ${password} class="form-input">
        </div>
        ${errorLoginPassMessage}
        <br/>
        ${wrongAction}
        <br/>
        ${nullPage}
        <div class="form-group">
            <button type="submit" class="form-btn">Сохранить</button>
        </div>
    </form>
</div>
${userType}
</body>
</html>