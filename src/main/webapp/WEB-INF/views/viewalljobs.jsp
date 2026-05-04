<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Job Portal - All Jobs</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        body { background-color: #f0f2f5; }
        .navbar { background: #1a1a2e !important; }
        .navbar-brand, .nav-link { color: #fff !important; }
        .nav-link:hover { color: #f0a500 !important; }
        .page-header {
            background: linear-gradient(135deg, #1a1a2e, #16213e, #0f3460);
            color: white; padding: 40px 0; text-align: center;
        }
        .job-card {
            border: none; border-radius: 16px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
            transition: transform 0.2s, box-shadow 0.2s;
        }
        .job-card:hover { transform: translateY(-4px); box-shadow: 0 8px 30px rgba(0,0,0,0.15); }
        .badge-tech { background-color: #0f3460; color: #fff; border-radius: 20px; padding: 4px 10px; font-size: 0.78rem; margin: 2px; display: inline-block; }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand fw-bold fs-4" href="/home">&#128188; Job Portal</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="/home">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="/viewalljobs">All Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="/addjob">Post a Job</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="page-header">
    <h2 class="fw-bold">&#128269; All Job Listings</h2>
    <p class="opacity-75">Browse all available opportunities</p>
</div>

<div class="container my-5">
    <c:choose>
        <c:when test="${empty jobPosts}">
            <div class="text-center py-5">
                <h4 class="text-muted">No jobs posted yet.</h4>
                <a href="/addjob" class="btn btn-primary mt-3">Post a Job</a>
            </div>
        </c:when>
        <c:otherwise>
            <div class="row g-4">
                <c:forEach var="jobPost" items="${jobPosts}">
                    <div class="col-md-6">
                        <div class="card job-card p-3">
                            <div class="card-body">
                                <h5 class="fw-bold">${jobPost.postProfile}</h5>
                                <p class="text-muted mb-1"><strong>Experience:</strong> ${jobPost.reqExperience} years</p>
                                <p class="mb-2"><strong>Description:</strong> ${jobPost.postDesc}</p>
                                <div>
                                    <c:forEach var="tech" items="${jobPost.postTechStack}">
                                        <span class="badge-tech">${tech}</span>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </c:otherwise>
    </c:choose>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
