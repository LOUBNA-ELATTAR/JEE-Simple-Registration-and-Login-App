<%
  if(session.getAttribute("name") == null){
    response.sendRedirect("login.jsp");
  }
%>

<c:import url="header.jsp" >


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