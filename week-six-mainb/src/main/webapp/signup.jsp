<%--
  Created by IntelliJ IDEA.
  User: decagon
  Date: 02/11/2022
  Time: 14:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
    <main>
        <div class="row">
            <div class="col-md-7">
                <p>
                    <img src="images/facebook_icon.svg" alt="Facebook Icon" class="fb-icon">
                </p>

                <h3>
                    Sign up here.
                </h3>
            </div><!-- col-md-7 end -->

            <div class="col-md-5">
                <div>
                    <section class="mb-4">
                        <p class="text-danger">${error}</p>
                        <form method="post" action="signup">
                            <div class="form-group">
                                <label class="visually-hidden form-label" for="firstname">First Name</label>
                                <input type="text" id="firstname" name="firstname" placeholder="First Name" class="form-control">
                            </div>

                            <div class="form-group">
                                <label class="visually-hidden form-label" for="lastname" >Last Name</label>
                                <input type="text" id="lastname" name="lastname" placeholder="Last Name" class="form-control">
                            </div>

                            <div class="form-group">
                                <label class="visually-hidden form-label" for="email" >Email</label>
                                <input type="email" id="email" name="email" placeholder="Email address or phone number" class="form-control">
                            </div>

                            <div class="form-group">
                                <label class="visually-hidden form-label" for="password" >Password</label>
                                <input type="password" id="password" name="password" placeholder="Password" class="form-control">
                            </div>

                            <div>
                                <input type="radio" id="female" name="gender" class="form-radio" value="female">
                                <label for="female" class="form-label">Female</label>

                                <input type="radio" id="male" name="gender" class="form-radio" value="male">
                                <label for="male" class="form-label">Male</label>
                            </div>


                            <div class="form-group">
                                <label class="visually-hidden" for="dob">Date of Birth</label>
                                <input type="date" id="dob" name="dob" class="form-control">
                            </div>

                            <div>
                              <button class="signup-btn" type="submit" >Signup</button>
                            </div>
                        </form>
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

    <footer>
        <p>
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