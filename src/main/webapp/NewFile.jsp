  <%
  if(session.getAttribute("name") == null){
    response.sendRedirect("login.jsp");
  }
%>

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
            <a href="logout.jsp" class="nav-link">Logout</a>
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

  
  <header id="header" class="bg-primary text-white text-center">
    <div class="container px-4">
      <h1 class="fw-bold">Welcome </h1>
      <p class="lead">
        My first JEE application
      </p>
      <a href="#about" class="btn btn-lg btn-light">Start scrolling!</a>
    </div>
  </header>

  <!-- About -->
  <section id="about" class="grid justify-content-between">
    <div class="container px-4 ">
      <div class="row justify-content-center">
        <div class="col-lg-8">
          <h2 class="">About JEE</h2>
          <p class="lead">
          (Java Platform, Enterprise Edition) An application software platform from Oracle based on the Java programming language. Originally developed by Sun, which Oracle acquired in 2010, Java EE services are performed in the middle tier between the user's machine and the enterprise's databases and legacy information systems. Java EE comprises a specification, reference implementation and set of testing suites. Its core component is Enterprise JavaBeans (EJBs), followed by JavaServer Pages (JSPs) and Java servlets and a variety of interfaces for linking to the information resources in the enterprise.
          </p>
        </div>
      </div>
    </div>
  </section>

<jsp:include page='footer.jsp'></jsp:include>
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
</style>