<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <style>
            *{
                padding: 0;
                margin: 0;
            }
            body {
                font-family: "Lato", sans-serif;
            }
            .main-head{
                height: 100px;
                background: #FFF;
            }
            .sidenav {
                height: 100%;
                background-color: #013C58;
                overflow-x: hidden;
            }
            .login-main-text{
                text-align: right;
            }
            .main {
                height: 100vh;
                background: #F9B84E;
            }

            @media screen and (max-height: 450px) {
                .sidenav {
                    padding-top: 15px;
                    height: 60vh;
                }

            }
            @media screen and (max-width: 450px) {
                .login-form{
                    margin-top: 10%;
                }

                .register-form{
                    margin-top: 10%;
                }
            }

            @media screen and (min-width: 768px){
                .main{
                    margin-left: 50%;
                }

                .sidenav{
                    width: 50%;
                    position: fixed;
                    z-index: 1;
                    top: 0;
                    left: 0;
                }

                .login-form{
                    margin-top: 50%;
                }

                .register-form{
                    margin-top: 20%;
                }
            }
            .login-main-text{
                margin-top: 20%;
                padding: 60px;
                color: #fff;
            }

            .login-main-text h2{
                font-weight: 300;
            }
            .c-primary{
                color: #F9B84E;
            }
            .c-secondary{
                color: #013C58;
            }
            .b-primary{
                background: #013C58;
            }
            .b-secondary{
                background: #F9B84E;
            }

        </style>
    </head>
    <body>
        <div class="sidenav">
            <div class="login-main-text">
                <h2 class="display-4 font-weight-bold">Blitz Researches</h2>
                <p class="font-weight-bold">Where polling is taken to the next level</p>
            </div>
        </div>
        <div class="main">
            <div class="col-md-6 col-sm-12 flex-grow-1 ">
                <div class="flex-grow-1">
                    <br>
                </div>
                <div class="login-form">
                    <form:form class="form-check" method="post" modelAttribute="question">
                        <label class="text-danger">${noQuestionMessage}</label><br>
                        <form:label path="question" cssClass="form-check-label">Question</form:label><br>
                        <form:input path="question" cssClass="p-2 w-100" type="text" name="question"/><br>
                        <form:errors path="question" cssClass="mb-4 text-danger"></form:errors><br>

                        <form:label path="alternative1" cssClass="mt-3 form-check-label">Alternative 1</form:label><br>
                        <form:input path="alternative1" cssClass="p-2 w-100" type="text" name="alternative1"/><br>
                        <form:errors path="alternative1" cssClass="text-danger"></form:errors><br>

                        <form:label path="alternative2" cssClass="mt-3 form-check-label">Alternative 1</form:label><br>
                        <form:input path="alternative2" cssClass="p-2 w-100" type="text" name="alternative2"/><br>
                        <form:errors path="alternative2" cssClass="text-danger"></form:errors><br>

                        <input class="btn btn-success mb-4" type="submit" value="Add Question">

                    </form:form>

                </div>
            </div>
        </div>

    </body>
</html>