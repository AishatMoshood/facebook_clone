<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="desc" content="">
    <meta name="keywords" content="">
    <meta name="author" content="Aishat Moshood">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <!-- Bootstrap Css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- Font Awesome Css -->
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.min.css'>
    <!-- Local Css -->
    <link rel="stylesheet" href="index.css">

    <title>Login and Registration Form Example</title>
</head>

<body>
<div class="container-fluid px-0">
    <main class="mb-5">
        <div class="row">
            <div class="col-md-7">
                <p>
                    <img src="images/facebook_icon.svg" alt="Facebook Icon" class="fb-icon">
                </p>

                <h3>
                    Facebook helps you connect and share with the people in your life.
                </h3>
            </div><!-- 1st col-md-6 end -->

            <div class="col-md-5">
                <div>
                    <section class="mb-4">
                        <p class="text-success">${status}</p>
                        <p class="text-success">${success}</p>
                        <form action="login" method="post">
                            <div class="form-group">
                                <label class="visually-hidden" for="email" class="form-label">Email</label>
                                <input type="email" id="email" name="email" placeholder="Email address or phone number" class="form-control">
                            </div>

                            <div class="form-group">
                                <label class="visually-hidden" for="password" class="form-label">Email</label>
                                <input type="password" id="password" name="password" placeholder="Password" class="form-control">
                            </div>

                            <div>
                                <button type="submit">Login</button>
                            </div>
                        </form>
                        <p>
                            <small>
                                <a href="/" class="fw-bold">Forgotten password?</a>
                            </small>
                        </p>

                        <hr>

                        <div class="create-acct my-2 mt-4">
                            <a href=${pageContext.request.contextPath}/signup.jsp>Create New Account</a>
                        </div>

                    </section>

                    <p>
                        <small>
                            <a href="/" class="text-dark fw-bold">Create a page</a> for a celebrity, brand or business.
                        </small>
                    </p>
                </div>
            </div><!-- col-md-5 end -->
        </div><!-- row end -->
    </main>

    <footer class="mt-5">
        <p class="pt-5">
            English (UK)
            Hausa
            Français (France)
            Português (Brasil)
            Español
            العربية
            Bahasa Indonesia
            Deutsch
            日本語
            Italiano
            हिन्दी
            Sign UpLog inMessengerFacebook LiteWatchPlacesGamesMarketplaceMeta PayOculusPortalInstagramBulletinLocalFundraisersServicesVoting Information CentreGroupsAboutCreate adCreate PageDevelopersCareersPrivacyCookiesAdChoicesTermsHelpContact uploading and non-usersSettingsActivity log
            Meta © 2022
        </p>
    </footer>
</div><!-- container fluid end -->
<!-- <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src="./script.js"></script> -->

</body>
</html>