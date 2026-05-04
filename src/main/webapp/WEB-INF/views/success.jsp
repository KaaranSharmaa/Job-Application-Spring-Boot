<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.job.Job_Application.JobPost"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Job Portal - Job Details</title>
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
        .card { border: none; border-radius: 16px; box-shadow: 0 4px 20px rgba(0,0,0,0.1); }
        .badge-tech { background-color: #0f3460; color: #fff; border-radius: 20px; padding: 4px 10px; font-size: 0.78rem; margin: 2px; display: inline-block; }
        .success-icon { font-size: 3rem; }
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
    <div class="success-icon">&#9989;</div>
    <h2 class="fw-bold mt-2">Job Posted Successfully!</h2>
    <p class="opacity-75">Your job listing has been added</p>
</div>

<%
    JobPost myJobPost = (JobPost) request.getAttribute("jobPost");
%>

<div class="container my-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card p-4">
                <div class="card-body">
                    <h4 class="fw-bold mb-3"><%= myJobPost.getPostProfile() %></h4>
                    <p class="text-muted mb-1"><strong>Experience Required:</strong> <%= myJobPost.getReqExperience() %> years</p>
                    <p class="mb-3"><strong>Description:</strong> <%= myJobPost.getPostDesc() %></p>
                    <p class="mb-2"><strong>Tech Stack:</strong></p>
                    <div>
                        <% for (String tech : myJobPost.getPostTechStack()) { %>
                            <span class="badge-tech"><%= tech %></span>
                        <% } %>
                    </div>
                    <div class="mt-4 d-flex gap-2">
                        <a href="/viewalljobs" class="btn btn-primary">View All Jobs</a>
                        <a href="/addjob" class="btn btn-outline-secondary">Post Another</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
