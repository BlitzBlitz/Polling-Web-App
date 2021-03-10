<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            .c-primary{
                color: #F9B84E !important;
            }
            .c-secondary{
                color: #013C58 !important;
            }
            .b-primary{
                background: #013C58 !important;
            }
            .b-secondary{
                background: #F9B84E !important;
            }

            body{
                background: #444444;
                width: 100%;
            }
        </style>
    </head>
    <body>

        <nav class="navbar navbar-light b-primary fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand c-primary mt-3" href="#">Blitz Researches</a>
                    <a class="nav-item btn text-light c-primary font-weight-bolder active border-bottom border-right rounded-0" href="/admin/live_results">Live Results</a>
                    <a class="nav-item btn text-light c-primary font-weight-bolder  border-bottom border-right rounded-0" href="/admin/change_question">Change question</a>
                    <a class="nav-item btn text-light c-primary font-weight-bolder  border-bottom border-right rounded-0" href="/admin/list_voters">List Voters</a>

                </div>
                <ul class="nav navbar-nav navbar-right">
                    <li><a class="btn btn-warning" href="/">Log Out</a></li>
                </ul>
            </div>

        </nav>

        <div class="container pt-5">
            <div class="row m-4">
                <h1 class="text-danger">${errorMessage}</h1>
                <div class="col-lg-7 b-primary mr-4 p-4 align-items-center">
                    <h1 class="text-white border-bottom">WHO WE ARE</h1>
                    <p class="text-white mt-3">Blitz Researches is a nationally-regarded primary research and consulting
                        firm based in Washington, D.C. Established in 1995, the polling company,
                        inc. has a track record with a broad base of clients that have sought
                        research and counsel on a variety of projects, by offering a wide range
                        of primary and secondary, quantitative and qualitative consumer-centric
                        research services, including polls, focus groups, media management, and
                        alternative, cutting-edge research technologies.

                        No single firm of its kind has produced more direct research on attitudes,
                        expectations, behaviors, frustrations, desires, motivation, and knowledge
                        of the population. We approach our craft as cultural anthropologists,
                        meaning, we perceive attitudinal or behavioral market research of the
                        public by recognizing the convergence of competing influences on
                        individuals' activities, responsibilities, thoughts, behaviors, and
                        decisions. the polling company, inc. is proud to be recognized as one
                        of the nation’s most respected market research and consulting firms.</p>
                </div>
                <div class="b-secondary col-lg-4 mr-4 p-4 justify-content-center align-items-center">
                    <h1 class="text-white border-bottom">LEADERSHIP</h1>
                    <p class="mt-3"><span class="font-weight-bold">Brett Loyd, President and CEO</span><br>
                        Brett Loyd is the President and CEO of the polling company, Blitz Researches,
                        a privately-held corporation currently in its 25th year of operation with
                        its headquarters located in Washington, DC.
                        Mr. Loyd has served as a Strategy Analyst, Polling Director and Outside
                        Advisor for a multitude of Congressional, Senatorial and Gubernatorial
                        candidates, national political committees, and Presidential candidates.

                        Having experience in both corporate and campaign politics, Brett has provided
                        advice and market research strategies for a variety of lobbying firms,
                        trade associations and Fortune 500 companies.</p>
                </div>
            </div>
            <div class="row m-4">
                <div class="b-secondary col-lg-7 b-primary mr-4 p-4 align-items-center">
                    <h1 class="text-white border-bottom">WHAT CAN WE DO FOR YOU?</h1>
                    <div class="row p-2">
                        <div class="col-5 mr-5">
                            <h1 class="border-bottom d-inline-block">CONSULTING</h1>
                            <p>
                                We produce research products that have immediate utility
                                to our clients. Blitz Researches work also includes research
                                findings that can be incorporated into the long-term planning
                                needs of our clients.
                            </p>
                        </div>
                        <div class="col-5">
                            <h1 class="border-bottom d-inline-block">RESEARCH</h1>
                            <p>
                                Qualitative research provides data beyond statistical measures
                                and percentages, and focuses on acquiring a more in-depth
                                understanding of one’s opinion on a given subject or issue.
                            </p>
                        </div>
                    </div>
                    <div class="row p-2">
                        <div class="col-5 mr-5">
                            <h1 class="border-bottom d-inline-block">SURVEY</h1>
                            <p>
                                Quantitative Survey research helps to confirm theories
                                based on personal anecdotes, observations, and hunches.
                            </p>
                        </div>
                        <div class="col-5">
                            <h1 class="border-bottom d-inline-block">SUPPORT</h1>
                            <p>
                                Being prepared for what could lie ahead should be a
                                cornerstone of any successful business plan.
                            </p>
                        </div>
                    </div>

                </div>
                <div class="b-primary col-4 mr-4 p-4 align-items-center">
                    <h1 class="text-white border-bottom">CONTACT US</h1>
                    <div class="text-white col-12 p-3">
                        <h1 class="border-bottom d-inline-block mt-4">Address</h1>
                        <p>
                            2850 Eisenhower Ave.
                            Ste. 100
                            Alexandria, VA 22314
                        </p>
                    </div>
                    <div class="text-white  col-12 p-3">
                        <h1 class="border-bottom d-inline-block">Email</h1>
                        <p>
                            info@blitzresearches.com
                        </p>
                    </div>
                    <div class="text-white  col-12 p-3">
                        <h1 class="border-bottom d-inline-block">Phone</h1>
                        <p>
                            (703) 683-5236
                        </p>
                    </div>
                </div>
            </div>
        </div>



    </body>
</html>