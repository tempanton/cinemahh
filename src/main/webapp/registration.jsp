<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    body {
        font-family: 'Open Sans Condensed', sans-serif;
        padding: 10px;
        margin: 0 auto;
        background: rgb(255, 255, 255) no-repeat;
    }

    .header {
        position: relative;
        background-color: rgb(230,90,20);
        -webkit-text-fill-color: ghostwhite;
        font-size: 50px;
        text-align: center;
        margin: auto;
        padding: 60px 10px 10px 10px;
        width: 500px;
        height: 100px;
    }

    .authentication-text {
        text-align: right;
        font-size: 10px;
        margin-right: 125px;
    }

    .container {
        background: rgba(250,250,250,0.7);
        -webkit-text-fill-color: black;
        margin: auto;
        padding: 60px 10px 10px 10px;
        width: 500px;
        height: 400px;
        text-align: center;
        border-radius: 4px;
    }


    input[type=text],
    input[type=password] {
        width: 275px;
        height: 45px;
        font-size: 18px;
        background-color:  rgb(255, 255, 255);
        padding-left: 20px;
    }

    input[type="text"]::placeholder,
    input[type="password"]::placeholder {
        -webkit-text-fill-color: rgb(200,200,200);
    }

    .btn-submit {
        padding: 10px 15px;
        color: rgb(230,90,20);
        background-color: rgb(230,90,20);
        -webkit-text-fill-color: ghostwhite;
        border: none;
    }
    button:active {
        outline: none;
        border: none;
    }

    button:focus {
        outline: 0;
    }
</style>
<head>
    <title>Registration Page</title>
</head>

<body onload="document.userForm.login.focus();">
<div class="header">
    Cinema
    <div class="authentication-text">
        Registration
    </div>
</div>

<div class="container">
    <form name="userForm" action="/registration" method="post">
        <div>
            <input type="text" name="login" required placeholder="Login"/>
        </div>
        <br>
        <div>
            <input type="password" name="password" placeholder="Password"/>
        </div>
        <br>
        <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}" />
        <div>
            <button type="submit" class="btn-submit">Submit</button>
        </div>

    </form>

</div>

</body>
</html>