<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Job Portal - Post a Job</title>
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
    <h2 class="fw-bold">&#128221; Post a New Job</h2>
    <p class="opacity-75">Fill in the details to add a new job listing</p>
</div>

<div class="container my-5">
    <div class="row justify-content-center">
        <div class="col-md-7">
            <div class="card p-4">
                <div class="card-body">
                    <form action="/handleForm" method="post">
                        <div class="mb-3">
                            <label for="postId" class="form-label fw-semibold">Post ID</label>
                            <input type="number" class="form-control" id="postId" name="postId" required>
                        </div>
                        <div class="mb-3">
                            <label for="postProfile" class="form-label fw-semibold">Post Profile</label>
                            <input type="text" class="form-control" id="postProfile" name="postProfile" required>
                        </div>
                        <div class="mb-3">
                            <label for="postDesc" class="form-label fw-semibold">Post Description</label>
                            <textarea class="form-control" id="postDesc" name="postDesc" rows="3" required></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="reqExperience" class="form-label fw-semibold">Required Experience (years)</label>
                            <input type="number" class="form-control" id="reqExperience" name="reqExperience" required>
                        </div>
                        <div class="mb-4">
                            <label for="postTechStack" class="form-label fw-semibold">Tech Stack <small class="text-muted">(Hold Ctrl to select multiple)</small></label>
                            <select multiple class="form-select" id="postTechStack" name="postTechStack" required style="height:160px">
                                <option value="Java">Java</option>
                                <option value="JavaScript">JavaScript</option>
                                <option value="TypeScript">TypeScript</option>
                                <option value="Python">Python</option>
                                <option value="Swift">Swift</option>
                                <option value="Kotlin">Kotlin</option>
                                <option value="Go">Go</option>
                                <option value="Rust">Rust</option>
                                <option value="PHP">PHP</option>
                                <option value="HTML5">HTML5</option>
                                <option value="CSS3">CSS3</option>
                                <option value="React">React</option>
                                <option value="Angular">Angular</option>
                                <option value="Vue.js">Vue.js</option>
                                <option value="Node.js">Node.js</option>
                                <option value="Express.js">Express.js</option>
                                <option value="Spring Boot">Spring Boot</option>
                                <option value="Django">Django</option>
                                <option value="Flask">Flask</option>
                                <option value="Ruby on Rails">Ruby on Rails</option>
                                <option value="Laravel">Laravel</option>
                                <option value="React Native">React Native</option>
                                <option value="Flutter">Flutter</option>
                                <option value="Docker">Docker</option>
                                <option value="Kubernetes">Kubernetes</option>
                                <option value="AWS (Amazon Web Services)">AWS</option>
                                <option value="Azure">Azure</option>
                                <option value="Google Cloud">Google Cloud</option>
                                <option value="DevOps">DevOps</option>
                                <option value="Jenkins">Jenkins</option>
                                <option value="GraphQL">GraphQL</option>
                                <option value="Machine Learning">Machine Learning</option>
                                <option value="Artificial Intelligence">Artificial Intelligence</option>
                                <option value="TensorFlow">TensorFlow</option>
                                <option value="PyTorch">PyTorch</option>
                                <option value="Blockchain">Blockchain</option>
                                <option value="Cybersecurity">Cybersecurity</option>
                                <option value="Elasticsearch">Elasticsearch</option>
                                <option value="Apache Kafka">Apache Kafka</option>
                                <option value="Scrum">Scrum</option>
                                <option value="Agile">Agile</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary w-100 fw-semibold">Submit Job</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
