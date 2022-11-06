<%--
  Created by IntelliJ IDEA.
  User: gsure-tech
  Date: 01/11/2022
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;c harset=UTF-8" language="java" %>
<html>
<head>
    <!-- Bootstrap Css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- Font Awesome Css -->
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css'>
    <style>
        *{
            margin:0;
            padding: 0;
            font-family: 'poppins',sans-serif;
        }
        body{
            background: #fefefe;
        }

        nav{
            display: flex;
            align-items: center;
            justify-content: space-between;
            background: #1877f2;
            /*background: #fffff;*/
            padding: 5px 5%;
            box-shadow: 0 0 100px #999;
        }
        .logo{
            width: 50px;
            margin-right: 10px;
            font-size: 25px;
            cursor: pointer;
        }

        .logo-small{
            width: 50px;
            margin-right: 10px;
            font-size: 25px;
            color: #1877F2;
            cursor: pointer;
        }

        .logo-span{
            margin-right: -40px;
        }

        .nav-left, .nav-right{
            display: flex;
            align-items: center;
        }
        .nav-left ul li{
            list-style: none;
            display: inline-block;
        }
        .nav-left ul li img{
            width: 28px;
            margin:0 15px;
        }
        .nav-user-icon{
            width: 40px;
            border-radius: 50%;
            cursor: pointer;
        }
        .logos{
            width: 50px;
            border-radius: 50%;
            margin-right: 45px;
        }
        .nav-user-icon img{
            width: 40px;
            border-radius: 50%;
            cursor: pointer;
        }
        .nav-user-icon{
            margin-left: 30px;
        }
        .search-box{
            background: #fff;
            width: 350px;
            display: flex;
            border-radius: 20px;
            align-items: center;
            padding: 0 15px;
        }
        .search-box img{
            width: 18px;
        }
        .search-box input{
            width: 100%;
            background: transparent;
            padding: 10px;
            outline: none;
            border:0;
        }
        .online{
            position: relative;
        }
        .online::after{
            content: '';
            width: 7px;
            height: 7px;
            border:2px solid #fff;
            border-radius: 50%;
            background: #41db51;
            position: absolute;
            top: 0;
            right: 0;
        }

        .post {
         width: 400px;
        }

        .post-comment .comment {
            background-color: #ddd;
        }

        .post-input-container{
            display: flex;
            flex-direction: column;
            align-self: center;
            align-items: center;
            padding-top: 20px;
            margin:auto;
        }
        .post-input-container textarea{
            width: 40%;
            border: 0;
            outline: 0;
            border-bottom: 1px solid #ccc;
            background: transparent;
            box-shadow: 0 0 10px #999;
        }
        .post-row{
            margin-top: 10px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .activity-icons div img{
            width: 18px;
            margin-right: 10px;
        }
        .activity-icons div{
            display: inline-flex;
            align-items: center;
            margin: 10px;
        }
        .activity-icons{
            display: inline-flex;
            align-items: center;
            margin-right: 30px;
            padding: 10px;
        }
        .post-comment{
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .post-comment .comment{
            padding: 10px;
            outline: none;
            border:0;
            width: 350px;
            display: flex;
            border-radius: 20px;
            align-items: center;
        }
        h3{
            margin: 10px;
        }
    </style>
    <title> Home page </title>
</head>
<body>
<nav>
    <div class="nav-left">
        <!-- <img src="images/facebook.png" class="logo"> -->
        <i class="fa-brands fa-facebook logo"></i>
        <ul class="pt-3">
            <li><i class="fa-solid fa-bell logo"></i></li>
            <li><i class="fa-solid fa-envelope logo"></i></li>
            <li><i class="fa-solid fa-play logo"></i></li>
        </ul>
    </div>
    <div class="nav-right">
        <div class="search-box">
            <i class="fa-solid fa-magnifying-glass"></i>
            <input type="text" placeholder="Search">
        </div>
        <div class="nav-user-icon online" >
            <i class="fa-solid fa-user logo"></i>
            <span>Hi ${user_first_name}</span>
        </div>
    </div>
</nav>
<div class="post-input-container">
    <h3>Create a post</h3>
    <form method="post" action="" class="text-center">
        <div class="form-group text-left mb-3">
            <label class="form-label text-bold" for="posttitle">Post Title</label>
            <input type="text" id="posttitle" class="form-control" name="posttitle">
        </div>

        <div class="form-group text-left mb-4">
            <div>
                <label class="form-label text-bold" for="postbody">Post Body</label>
            </div>
            <textarea rows="13" name="postbody" style="width: 400px;" id="postbody"> </textarea>
        </div>

        <div><button class="btn btn-primary mt-3">Post</button></div>

    </form>
    <div class="post-row">
        <div class="activity-icons">
            <div> <!-- <i class="fa-regular fa-heart"></i> --> <i class="fa-regular fa-thumbs-up logo-small"></i></div>
            <div><i class="fa-regular fa-thumbs-down logo-small"></i></div>
            <div><i class="fa-solid fa-share logo-small mr-1"></i></div>
        </div>
    </div>
</div>
<div class="post-comment">
    <form method="post" action="" class="text-center">
        <textarea name="comment" class="comment" placeholder="comment">

        </textarea>
        <button class="btn btn-primary mt-3">Comment</button>
        <!-- <input type="text"  placeholder="comment" cl> -->
    </form>
</div>
</body>
</html>