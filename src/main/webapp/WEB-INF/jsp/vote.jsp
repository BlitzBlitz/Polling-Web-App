<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
            .bg-prim{
                background: #F9B84E;
            }
            .bg-seco{
                background: #013C58;
            }
        </style>
    </head>
    <body>
        <div>
            <div class="bg-prim question p-4 text-center">
                <h1> ${question}</h1>
                <h1> ${errorMessage}</h1>
                <a class="btn btn-outline-primary text-light" href="/user" class="btn-primary">Go Back</a>
            </div>
            <div class="row bg-seco h-75">
                <div class="col d-flex flex-column justify-content-center align-items-center">
                    <h1 class="text-white display-1"> ${alternative1}</h1>
                    <a class="btn btn-outline-info px-5 py-3" href="/user/doVote?vote=1"/> ${alternative1} </a>
                </div>
                <div class="col d-flex flex-column justify-content-center align-items-center">
                    <h1 class="text-white display-1"> ${alternative2}</h1>
                    <a class="btn btn-outline-light px-5 py-3" href="/user/doVote?vote=2"> ${alternative2}</a>
                </div>
            </div>



        </div>
    </body>
</html>
