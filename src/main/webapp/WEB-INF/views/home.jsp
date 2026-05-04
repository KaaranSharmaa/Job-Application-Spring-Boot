<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Job Portal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet">
    <style>
        body { background-color: #f0f2f5; }
        .hero {
            background: linear-gradient(135deg, #1a1a2e, #16213e, #0f3460);
            color: white;
            padding: 80px 0 60px;
            text-align: center;
        }
        .hero h1 { font-size: 3rem; font-weight: 700; }
        .hero p { font-size: 1.2rem; opacity: 0.85; }
        .action-card {
            border: none;
            border-radius: 16px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
            transition: transform 0.2s, box-shadow 0.2s;
        }
        .action-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 8px 30px rgba(0,0,0,0.15);
        }
        .action-card .icon { font-size: 3rem; }
        .navbar { background: #1a1a2e !important; }
        .navbar-brand, .nav-link { color: #fff !important; }
        .nav-link:hover { color: #f0a500 !important; }
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

<div class="hero">
    <h1>&#128188; Job Portal</h1>
    <p class="mt-2">Find the right talent. Post the right opportunity.</p>
    <div class="mt-4">
        <a href="/viewalljobs" class="btn btn-warning btn-lg me-3 fw-semibold">Browse Jobs</a>
        <a href="/addjob" class="btn btn-outline-light btn-lg fw-semibold">Post a Job</a>
    </div>
</div>

<div class="container my-5">
    <div class="row g-4 justify-content-center">
        <div class="col-md-5">
            <div class="card action-card p-4 text-center">
                <div class="icon text-primary mb-3">&#128269;</div>
                <h4 class="fw-bold">View All Jobs</h4>
                <p class="text-muted">Browse all available job postings and find the perfect match.</p>
                <a href="/viewalljobs" class="btn btn-primary mt-2">Browse Jobs</a>
            </div>
        </div>
        <div class="col-md-5">
            <div class="card action-card p-4 text-center">
                <div class="icon text-success mb-3">&#43;&#9711;</div>
                <h4 class="fw-bold">Post a Job</h4>
                <p class="text-muted">Add a new job listing and reach the best candidates.</p>
                <a href="/addjob" class="btn btn-success mt-2">Post a Job</a>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
