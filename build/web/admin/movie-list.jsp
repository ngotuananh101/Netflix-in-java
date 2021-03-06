<%-- 
    Document   : movie-list
    Created on : Jun 29, 2021, 8:24:36 PM
    Author     : ngotu
--%>

<%@page import="com.tuananh.model.Movie"%>
<%@page import="java.util.List"%>
<%@page import="com.tuananh.dal.MovieDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from iqonic.design/themes/streamitnew/dashboard/html/theme/movie-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 05 Sep 2020 07:05:34 GMT -->
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Movie List</title>
        <!-- Favicon -->
        <link rel="shortcut icon" href="https://iqonic.design/themes/streamitnew/dashboard/html/assets/images/favicon.ico" />
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/dataTables.bootstrap4.min.css">
        <!-- Typography CSS -->
        <link rel="stylesheet" href="assets/css/typography.css">
        <!-- Style CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="assets/css/responsive.css">
    </head>

    <body>
        <%
            MovieDAO cd = new MovieDAO();
            List<Movie> lm = cd.getAllMovie();
            pageContext.setAttribute("listmovie", lm);
        %>
        <!-- loader Start -->
        <!--        <div id="loading">
                    <div id="loading-center">
                    </div>
                </div>-->
        <!-- loader END -->
        <!-- Wrapper Start -->
        <div class="wrapper">
            <!-- Sidebar  -->
            <jsp:include page="../common/admin_sidebar.jsp" ></jsp:include>
                <!-- TOP Nav Bar -->
            <jsp:include page="../common/admin_topnavbar.jsp" ></jsp:include>
                <!-- TOP Nav Bar END -->
                <!-- Page Content  -->
                <div id="content-page" class="content-page">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="iq-card">
                                    <div class="iq-card-header d-flex justify-content-between">
                                        <div class="iq-header-title">
                                            <h4 class="card-title">Movie Lists</h4>
                                        </div>
                                        <div class="iq-card-header-toolbar d-flex align-items-center">
                                            <a href="add-movie.html" class="btn btn-primary">Add movie</a>
                                        </div>
                                    </div>
                                    <div class="iq-card-body">
                                        <div class="table-view">
                                            <table class="data-tables table movie_table " style="width:100%">
                                                <thead>
                                                    <tr>
                                                        <th>Movie</th>
                                                        <th>Category</th>
                                                        <th>Release Year</th>
                                                        <th>Duration(Minute)</th>
                                                        <th style="width: 20%;">Description</th>
                                                        <th>Link video</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach items="${listmovie}" var="movie">
                                                    <tr>
                                                        <td>
                                                            <div class="media align-items-center">
                                                                <div class="iq-movie">
                                                                    <img
                                                                        src="${movie.getPoster() }"
                                                                        class="img-border-radius avatar-40 img-fluid" alt="">
                                                                </div>
                                                                <div class="media-body text-white text-left ml-3">
                                                                    <p class="mb-0">${movie.getTitle() }</p>
                                                                    <small>${movie.getRuntime() }</small>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>Category</td>
                                                        <td>${movie.getRelease_date() }</td>
                                                        <td>${movie.getRuntime() }</td>
                                                        <td>
                                                            <p>${movie.getOverview() }</p>
                                                        </td>
                                                        <td>${movie.getVideo_link() }</td>
                                                        <td>
                                                            <div class="flex align-items-center list-user-action">
                                                                <span data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit">
                                                                    <a class="iq-bg-success" data-toggle="modal" data-target="#exampleModalCenter" href="#"><i class="ri-pencil-line"></i></a>
                                                                </span>
                                                                <a class="iq-bg-primary" data-toggle="tooltip" data-placement="top" title=""
                                                                   data-original-title="Delete" href="#"><i
                                                                        class="ri-delete-bin-line"></i></a>
                                                            </div>
                                                            <!-- Modal -->
                                                            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                                                <div class="modal-dialog modal-dialog-centered" role="document">
                                                                    <div class="modal-content">
                                                                        <div class="modal-header">
                                                                            <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                                <span aria-hidden="true">&times;</span>
                                                                            </button>
                                                                        </div>
                                                                        <form action="../edit?type=movie&id=${movie.getId()}" method="POST">
                                                                            <div class="modal-body">
                                                                                <div class="form-group">
                                                                                    <input type="text" class="form-control" placeholder="Title" name="title" value="${movie.getTitle()}">
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <textarea class="form-control" name="overview" rows="4" cols="50" placeholder="Overview">${movie.getOverview()}</textarea>
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <input type="text" class="form-control" placeholder="Poster" name="poster" value="${movie.getPoster()}">
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <input type="text" class="form-control" placeholder="Backdrop" name="backdrop" value="${movie.getBackdrop()}">
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <input type="text" class="form-control" placeholder="Vote average" name="vote_average" value="${movie.getVote_average()}">
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <input type="text" class="form-control" placeholder="Rumtime" name="runtime" value="${movie.getRuntime()}">
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <input type="text" class="form-control" placeholder="Release date" name="release_date" value="${movie.getRelease_date()}">
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <input type="text" class="form-control" placeholder="Link" name="link" value="${movie.getVideo_link()}">
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <input type="text" class="form-control" placeholder="Quality" name="quality" value="${movie.getQuality()}">
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <input type="text" class="form-control" placeholder="Category ID" name="category" value="${movie.getCategory_id()}">
                                                                                </div>
                                                                            </div>
                                                                            <div class="modal-footer">
                                                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                                                <button type="submit" class="btn btn-primary">Save changes</button>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Wrapper END -->
        <!-- Footer -->
        <jsp:include page="../common/admin_footer.jsp" ></jsp:include>
        <!-- Footer END -->
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.dataTables.min.js"></script>
        <script src="assets/js/dataTables.bootstrap4.min.js"></script>
        <!-- Appear JavaScript -->
        <script src="assets/js/jquery.appear.js"></script>
        <!-- Countdown JavaScript -->
        <script src="assets/js/countdown.min.js"></script>
        <!-- Counterup JavaScript -->
        <script src="assets/js/waypoints.min.js"></script>
        <script src="assets/js/jquery.counterup.min.js"></script>
        <!-- Wow JavaScript -->
        <script src="assets/js/wow.min.js"></script>
        <!-- Slick JavaScript -->
        <script src="assets/js/slick.min.js"></script>
        <!-- Owl Carousel JavaScript -->
        <script src="assets/js/owl.carousel.min.js"></script>
        <!-- Magnific Popup JavaScript -->
        <script src="assets/js/jquery.magnific-popup.min.js"></script>
        <!-- Smooth Scrollbar JavaScript -->
        <script src="assets/js/smooth-scrollbar.js"></script>
        <!-- Chart Custom JavaScript -->
        <script src="assets/js/chart-custom.js"></script>
        <!-- Custom JavaScript -->
        <script src="assets/js/custom.js"></script>
    </body>
</html>
