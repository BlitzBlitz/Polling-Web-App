<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <style>
            *{
                padding: 0;
                margin: 0;
                overflow: hidden;
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

            .main {
                padding: 0px 10px;
                background: #F9B84E;
            }

            @media screen and (max-height: 450px) {
                .sidenav {padding-top: 15px;}
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
                    margin-left: 40%;
                }

                .sidenav{
                    width: 40%;
                    position: fixed;
                    z-index: 1;
                    top: 0;
                    left: 0;
                }

                .login-form{
                    margin-top: 55%;
                }

                .register-form{
                    margin-top: 15%;
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
                <div class="login-form">
                    <form:form class="form-check" method="post" modelAttribute="user">
                        <label class="text-danger">${errorMessage}</label><br>

                        <form:label path="idNumber" class="form-check-label">Your ID Number</form:label>
                        <form:input path="idNumber" value="${admin.idNumber}" class="mb-2 p-2 w-75 bg-light border-0" type="text" name="idNumber" /><br>
                        <form:errors path="idNumber"  cssClass="text-danger"></form:errors>

                        <form:label path="idNumber"  class="form-check-label "/>Your Password</h4>
                        <form:input path="password" value="${admin.password}" class="mb-2 p-2 w-75 bg-light border-0" type="password" name="password" /><br>
                        <form:errors path="password" cssClass="text-danger"></form:errors>

                        <h6 class="form-check-label"  >Confirm Your Password</h6>
                        <input class="mb-2 p-2 w-75 bg-light border-0"  type="password" name="confirmed_password"><br>

                        <form:label path="email" class="form-check-label"/>Your email<br>
                        <form:input path="email" value="${admin.email}" class="mb-4 p-2 w-75 bg-light border-0" type="email" name="email" /><br>

                        <form:checkbox path="isAdmin" value="Admin" cssClass="mb-3 mr-1" name="isAdmin"></form:checkbox>Admin<br>
                        <input class="mb-2 p-2 w-75" type="text" name="company_code" placeholder="Company Code(Admin Only)"><br>
                        <input class="btn btn-success mb-4" type="submit" value="Register">
                    </form:form>

                </div>
            </div>
        </div>
        <div class="bg-dark h-25">

        </div>
    </body>
</html>