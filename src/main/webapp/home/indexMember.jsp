<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
    <%@page language="java" import="model.bean.Member"%>
        <%
String username = (String)session.getAttribute("username"); Member member =
(Member)session.getAttribute("member"); if (member.getName() == null ||
username.isEmpty()) { response.sendRedirect("../home/index.jsp"); }
 %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
                <link href="../assets/css/layout.css" rel="stylesheet" type="text/css" media="all">
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
                <title>Trang chủ</title>
            </head>

            <body id="top">

                <form action="Servlet" method="post">
                    <div class="wrapper row0">
                        <div id="topbar" class="hoc clear">
                            <div class="fl_right">
                                <ul>
                                    <li><a href="indexMember.jsp"><i class="fa fa-lg fa-home"></i></a></li>
                                    <li>
                                        <a href="PersonalUpdateServlet?id=<%= member.getId()%>">
                                            <%=  member.getName() %>
                                        </a>
                                    </li>
                                    <li><a href="login.jsp">Đăng xuất</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- Top Background Image Wrapper -->
                    <div class="bgded overlay" style="background-image:url('../assets/images/backgroundimage.jpg');">
                        <!--  -->
                        <div class="wrapper row1">
                            <header id="header" class="hoc clear">
                                <!--  -->
                                <div id="logo" class="fl_left">
                                    <h1><a href="indexMember.jsp">Website Group</a></h1>
                                </div>
                            </header>
                        </div>
                        <div id="pageintro" class="hoc clear">
                            <!--  -->
                            <div class="flexslider basicslider">
                                <ul class="slides">
                                    <li>
                                        <article>
                                            <p>Thành viên 1</p>
                                            <h3 class="heading">PHAM TRAN THANH TRUC</h3>
                                            <p>Bán kiệt sức mình cho những giấc mơ</p>
                                            <footer><a class="btn inverse" href="../home/PersonalDetailServletMember?id=102210237">Xem thêm</a></footer>
                                        </article>
                                    </li>
                                    <li>
                                        <article>
                                            <p>Thành viên 2</p>
                                            <h3 class="heading">PHAN THANH NGAN</h3>
                                            <p>We live to die</p>
                                            <footer><a class="btn inverse" href="../home/PersonalDetailServletMember?id=102210219">Xem thêm</a></footer>
                                        </article>
                                    </li>
                                    <li>
                                        <article>
                                            <p>Thành viên 3</p>
                                            <h3 class="heading">TRUONG QUANG LOC</h3>
                                            <p>_ (:") 」∠ )_</p>
                                            <footer><a class="btn inverse" href="../home/PersonalDetailServletMember?id=102210214">Xem thêm</a></footer>
                                        </article>
                                    </li>
                                </ul>
                            </div>
                            <!--  -->
                        </div>
                        <!--  -->
                    </div>
                    <!-- End Top Background Image Wrapper -->
                    <div class="wrapper row3 coloured">
                        <main class="hoc container clear">
                            <!-- main body -->
                            <!--  -->
                            <div id="introblocks">
                                <ul class="nospace group">
                                    <li class="one_third first">
                                        <article>
                                            <div>
                                                <h6 class="heading">PHẠM TRẦN THANH TRÚC</h6>
                                                <p>Mình đến với ngành này là vì bị truyền thông dụ dỗ: "Làm IT lương vài ngàn $"</p>
                                            </div>
                                            <img src="../assets/images/PhamTranThanhTruc.jpg" alt="">
                                            <footer><a href="../home/PersonalDetailServletMember?id=102210237">More Details</a></footer>
                                        </article>
                                    </li>
                                    <li class="one_third">
                                        <article>
                                            <div>
                                                <h6 class="heading">PHAN THÀNH NGÂN</h6>
                                                <p>Hiện tại mình là Ủy viên Ban chấp hành Liên chi đoàn Khoa Công nghệ thông tin - Trường Đại học Bách Khoa - Đại học Đà Nẵng</p>
                                            </div>
                                            <img src="../assets/images/PhanThanhNgan.jpg" alt="">
                                            <footer><a href=../home/PersonalDetailServletMember?id=102210219>More Details</a></footer>
                                        </article>
                                    </li>
                                    <li class="one_third">
                                        <article>
                                            <div>
                                                <h6 class="heading">TRƯƠNG QUANG LỘC</h6>
                                                <p>Mình là người con của Quảng Bình, vì đam mê Công nghệ thông tin mà tìm đến Đà Nẵng</p>
                                            </div>
                                            <img src="../assets/images/ava3.png" alt="">
                                            <footer><a href="../home/PersonalDetailServletMember?id=102210214">More Details</a></footer>
                                        </article>
                                    </li>
                                </ul>
                            </div>
                            <!--  -->
                            <!-- / main body -->
                            <div class="clear"></div>
                        </main>
                    </div>

                    <div class="wrapper row4 bgded overlay" style="background-image:url();">
                        <footer id="footer" class="hoc clear">
                            <!--  -->
                            <h3 class="heading">Đây là website bài tập nhóm của tụi mình</h3>
                            <div class="font-xs" id="current-date"></div>
                            <div class="font-xs" id="clock"></div>

                        </footer>
                    </div>
                    <a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
                    <!-- JAVASCRIPTS -->
                    <script src="../assets/scripts/jquery.min.js"></script>
                    <script src="../assets/scripts/jquery.backtotop.js"></script>
                    <script src="../assets/scripts/jquery.mobilemenu.js"></script>
                    <script src="../assets/scripts/jquery.flexslider-min.js"></script>
                    <script src="../assets/scripts/common.js" defer></script>

                </form>
            </body>

            </html>