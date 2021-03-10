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
                width: 50vw;
                height: 80vh;
            }
            .result2{
                grid-area: result2;
                background: #444444;
                width: 50vw;
                height: 80vh;
            }
        </style>
    </head>
    <body>
        <div class="grid">
            <div class="question p-3 text-center">
                <h1 class="text-danger">${errorMessage}</h1>
<%--                <a class="btn btn-secondary" href="/user">${go_home_user}</a>--%>
<%--                <a href="/admin" class="btn btn-primary">${go_home_admin}</a>--%>
                <h1> ${question}</h1>
                <a class="btn btn-primary" onclick="history.back()" >Go Back</a>
            </div>
            <div class="result1 d-flex justify-content-center align-items-center">
                <h1 class="text-white display-1"> ${result1}</h1>
            </div>
            <div class="result2 d-flex justify-content-center align-items-center">
                <h1 class="text-white display-1">${result2}</h1>
            </div>

        </div>
    </body>
</html>
