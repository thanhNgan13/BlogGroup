<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <script src="../assets/scripts/common.js"></script>

    <style>
      @import url("https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&display=swap");
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Quicksand", sans-serif;
      }

      body {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        background-image: url("../assets/images/backgroundimage.jpg");
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: cover;
      }

      form {
        position: absolute;
        width: 100vw;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        gap: 2px;
        flex-wrap: wrap;
        overflow: hidden;
      }

      form::before {
        content: "";
        position: absolute;
        width: 100%;
        height: 100%;
        animation: animate 5s linear infinite;
      }

      @keyframes animate {
        0% {
          transformdes: translateY(-100%);
        }
        100% {
          transformdes: translateY(100%);
        }
      }

      form span {
        position: relative;
        display: block;
        width: calc(6.25vw - 2px);
        height: calc(6.25vw - 2px);
        background: #181818;
        z-index: 2;
        transition: 1.5s;
      }

      form span:hover {
        background: #0f0;
        transition: 0s;
      }

      form .signin {
        position: absolute;
        width: 400px;
        background: #222;
        z-index: 1000;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 40px;
        border-radius: 4px;
        box-shadow: 0 15px 35px rgba(0, 0, 0, 9);
      }

      form .signin .content {
        position: relative;
        width: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        gap: 40px;
      }

      form .signin .content h2 {
        font-size: 2em;
        color: #ffffff;
        text-transform: uppercase;
      }

      form .signin .content .formDes {
        width: 100%;
        display: flex;
        flex-direction: column;
        gap: 25px;
      }

      form .signin .content .formDes .inputBox {
        position: relative;
        width: 100%;
      }

      form .signin .content .formDes .inputBox input {
        position: relative;
        width: 100%;
        background: #333;
        border: none;
        outline: none;
        padding: 25px 10px 7.5px;
        border-radius: 4px;
        color: #fff;
        font-weight: 500;
        font-size: 1em;
      }

      form .signin .content .formDes .inputBox i {
        position: absolute;
        left: 0;
        padding: 15px 10px;
        font-style: normal;
        color: #aaa;
        transition: 0.5s;
        pointer-events: none;
      }

      .signin .content .formDes .inputBox input:focus ~ i,
      .signin .content .formDes .inputBox input:valid ~ i {
        transform: translateY(-7.5px);
        font-size: 0.8em;
        color: #fff;
      }

      .signin .content .formDes .links {
        position: relative;
        width: 100%;
        display: flex;
        justify-content: space-between;
      }

      .signin .content .formDes .links a {
        color: #fff;
        text-decoration: none;
      }

      .signin .content .formDes .links a:nth-child(2) {
        color: #ffff;
        font-weight: 600;
      }

      .signin .content .formDes .inputBox input[type="submit"] {
        padding: 10px;
        background: #ffffff;
        color: #000;
        font-weight: 600;
        font-size: 1.35em;
        letter-spacing: 0.05em;
        cursor: pointer;
      }

      input[type="submit"]:active {
        opacity: 0.6;
      }

      @media (max-width: 900px) {
        form span {
          width: calc(10vw - 2px);
          height: calc(10vw - 2px);
        }
      }

      @media (max-width: 600px) {
        form span {
          width: calc(20vw - 2px);
          height: calc(20vw - 2px);
        }
      }

      .formDes .homeButton {
        margin-left: 85px;
        text-decoration: none;
        color: #ffff;
        font-weight: 600;
        /* Loại bỏ gạch chân */
        /* Các thuộc tính CSS khác để định dạng nút, ví dụ màu sắc, v.v. */
      }
    </style>
  </head>

  <body>
    <form action="../home/LoginServlet" method="post">
      <div class="signin">
        <div class="content">
          <h2>Sign In</h2>
          <div class="formDes">
            <div class="inputBox">
              <input type="text" id="username" name="username" required />
              <i>Username</i>
            </div>

            <div class="inputBox">
              <input type="password" id="password" name="password" required />
              <i>Password</i>
            </div>

            <div class="links">
              <a href="#"></a> <a href="#" onclick="clearInputs()">Clear</a>
            </div>

            <div class="inputBox">
              <input type="submit" id="btnLogin" value="Login" />
            </div>

            <a href="index.jsp" class="homeButton">Quay lại trang chủ</a>
          </div>
        </div>
      </div>
    </form>
  </body>
</html>
