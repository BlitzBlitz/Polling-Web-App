<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <title>Title</title>
        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            .grid{
                display: grid;
                grid-template-areas:
                                'question question'
                                'result1 result2';
            }
            .question{
                grid-area: question;
                background: #F9B84E;
                width: 100vw;
                height: 20vh;
            }
            .result1{
                grid-area: result1;
                background: #013C58;
                width: 80vw;
                height: 80vh;
            }
            .result2{
                grid-area: result2;
                background: #444444;
                width: 20vw;
                height: 80vh;
            }
            body{
                background: #444444;
                width: 100%;
            }
        </style>
    </head>
    <body>
        <div class="grid">
            <div class="question p-4">
                <h1 class="text-primary">Blitz Researches</h1>

                <h1 class="text-danger">${errorMessage}</h1>
                <a href="/admin" class="btn-primary">${go_home_admin}</a>
            </div>
            <div class="result1 d-flex">
                <div class="container p-4">
                    <table class="table table-hover table-striped w-50">
                        <thead class="text-white">
                        <tr><th>Voter Id</th></tr>
                        </thead>
                        <tbody>
                        <jstl:forEach items="${voters}" var="voter">
                            <tr class="text-white"><td>${voter}</td></tr>
                        </jstl:forEach>
                        </tbody>
                    </table>
                </div>
                <input class="btn btn-primary align-self-end m-5" type="button" value="Go back!" onclick="history.back()">
            </div>


        </div>
    </body>
</html>