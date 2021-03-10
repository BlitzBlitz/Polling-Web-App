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
                    margin-top: 72%;
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
                <h2 class="display-3 font-weight-bold">Blitz Researches</h2>
                <p class="font-weight-bold">Where polling is taken to the next level</p>
            </div>
        </div>
        <div class="main">
            <div class="col-md-6 col-sm-12 flex-grow-1 ">
                <div class="flex-grow-1">
                    <br>
                </div>
                <div class="login-form">
                    <form:form class="form-check" method="post" modelAttribute="user">
                        <form:label path="idNumber" class="form-check-label">Your ID Number</form:label><br>
                        <form:input path="idNumber" class="p-2 w-75" type="text" name="idNumber"/><br>
                        <form:errors path="idNumber" cssClass="mb-4 text-danger"></form:errors><br>

                        <form:label path="password" class="mt-3 form-check-label">Your Password</form:label><br>
                        <form:input path="password" class="p-2 w-75" type="password" name="password"/><br>
                        <form:errors path="password" cssClass="text-danger"></form:errors><br>

                        <form:checkbox path="isAdmin" class="mr-2 mb-3"  value="Admin" name="isAdmin"/>Admin<br><br>
                        <input class="btn btn-success mb-4" type="submit" value="Login"/>

                        <a href="/register" class="mb-4 btn bg-light c-secondary">Register</a><br>
                        <label class="text-danger">${errorMessage}</label>
                    </form:form>

                </div>
            </div>
        </div>

    </body>
</html>