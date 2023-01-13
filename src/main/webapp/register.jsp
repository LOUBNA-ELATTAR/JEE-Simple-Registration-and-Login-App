<jsp:include page='header.jsp'></jsp:include>
<jsp:include page='footer.jsp'></jsp:include>
   <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
   
   
   <section
    class="bg-light pt-5 d-flex d-flex  align-items-center flex-column py-4">
    <div class="my-3 text-sm-4xl text-xl text-center">
      <h1 class="">
        <span class="text-sm-4xl">Register</span>
      </h1>
     
    </div>
    <div class="card mx-auto  px-sm-5">
      <div class="card-body">
        <form method="post" action="RegistrationServlet">
          <div class="row">
            <div class="mb-3 col">
            <div class="d-flex justify-content-between align-items-center">
              <label for="fname" class="form-label font-weight-bold"
                >First name</label
              >
            </div>
            <input
              placeholder="Enter your first name"
              class="form-control form-control-sm-lg"
              id="fname" name="fname"
            />
            </div>
          <div class="mb-3 col">
            <div class="d-flex justify-content-between align-items-center">
              <label for="lname" class="form-label font-weight-bold"
                >Last name</label
              >
            </div>
            <input
              placeholder="Enter your last name"
              class="form-control form-control-sm-lg"
              id="lname" name="lname"
            />
            </div>
          </div>

          <div class="row">        
            <div class="mb-3 col">
              <div class="d-flex justify-content-between align-items-center">
                <label for="login" class="form-label font-weight-bold"
                  >Login ID</label
                >
              </div>
              <input
                placeholder="Enter your login ID"
                class="form-control form-control-sm-lg"
                id="login" name="login"
              />

            </div>
            <div class="mb-3 col">
              <label for="password" class="form-label font-weight-bold"
                >Password</label
              >
              <input
                type="password"
                placeholder="Enter your password"
                class="form-control form-control-sm-lg"
                id="password" name="password"
              />
            </div>
          </div>
          <div class="row">
            <div class="mb-3 col">
            <label for="dob" class="form-label font-weight-bold"
                >Date of birth</label
              >
              <input
                type="date"
                class="form-control form-control-sm-lg"
                id="dob" name="dob"
              />
            </div>

            <div class="mb-3 col">
            <label for="mobile" class="form-label font-weight-bold"
                >Mobile number</label
              >
              <input
                type="text"
                class="form-control form-control-sm-lg"
                id="mobile" name="mobile"
                placeholder="Enter your mobile number"
              />
            </div>
          </div>
          <div class="col border-end  d-flex justify-content-center align-items-center">
            <button
              type="submit"
              class="btn btn-primary btn-sm-lg btn-block text-white bg-primary border-primary text-normal font-weight-bold">
              Register
            </button>
          </div>
        </form>
      </div>
      
    </div>

</section>
    <!-- Optional JavaScript -->
    <!-- Popper.js first, then Bootstrap JS -->
    <script
      src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
      integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"
      integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/"
      crossorigin="anonymous"
    ></script>
  </body>

  <!-- Script -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

  <script>
    var scrollSpy = new bootstrap.ScrollSpy(document.body, {
      target: '#navbar'
    })
  </script>
  
  
  
<script type="text/javascript">
  var status = document.getElementById("status").value;
  if (status == "success"){
    swal ("Congrats", "Account created successfully", "success");
  }
</script>
  
  
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
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
}
</style>

  <footer class="p-4 bg-dark text-white text-center">
    <div class="container"><p class="lead">Copyright &copy; <span class="text-decoration-underline">2022</p></div>
  </footer>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />