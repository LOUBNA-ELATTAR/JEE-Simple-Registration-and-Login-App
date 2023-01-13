
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <title>JEE</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
   integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
</head>


<body>
  <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark" id="navbar">
    <div class="container">
      <a href="#" class="navbar-brand">JEE</a>
      <button class="navbar-toggler" role="button" data-bs-toggle="collapse" data-bs-target="#collapsed-nav">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="collapsed-nav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a href="index.jsp" class="nav-link">Home</a>
          </li>
          <li class="nav-item">
            <a href="register.jsp" class="nav-link">Register</a>
          </li>
          <li class="nav-item">
            <a href="login.jsp" class="nav-link">Login</a>
          </li>
          <li class="nav-item">
            <a href="LogoutServlet" class="nav-link">Logout</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  
  
  
  <style type="text/css">
  body{
    position: relative;
}
section{
    padding: 9rem 0;
}
header{
    padding: 9.5rem 0 6rem 0;
}
h2{
    font-weight: 600;
}
footer{
   left: 0;
   bottom: 0;
   width: 100%;
}
</style>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

  <script>
    var scrollSpy = new bootstrap.ScrollSpy(document.body, {
      target: '#navbar'
    })
  </script>
