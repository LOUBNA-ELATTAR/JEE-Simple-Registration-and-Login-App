<jsp:include page='header.jsp'></jsp:include>
     <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
   <section
    class="bg-light pt-5 d-flex d-flex min-vh-100 align-items-center flex-column py-4">
    <div class="my-3 text-sm-4xl text-xl text-center">
      <h1 class="">
        <span class="text-sm-4xl">Login</span>
      </h1>
     
    </div>
    <div class="card mx-auto  px-sm-5">
      <div class="card-body">
        <form method="post" action="LoginServlet">
          

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
          
          <div class="col border-end  d-flex justify-content-center align-items-center">
            <button
              type="submit"
              class="btn btn-primary btn-sm-lg btn-block text-white bg-primary border-primary text-normal font-weight-bold">
              Sign in
            </button>
          </div>
        </form>
      </div>
      
    </div>
    
    <a href="register.jsp">Register here</a>
  </section>
  
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
    
  
<script type="text/javascript">
  var status = document.getElementById("status").value;
  if (status == "failed"){
    swal ("Sorry", "Wrong login ID or password", "error");
  }
</script>
  
  
<jsp:include page='footer.jsp'></jsp:include>
