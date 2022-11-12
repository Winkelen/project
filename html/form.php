<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/form.css">
    <title>Sign Up | Winkelen</title>
</head>
<body>
   
   <div class="split-screen">
    <div class="left">
    <section class="copy">
    <h1>Explore Our Products</h1> </section>
  </div>
  <div class="right">
    <form>
        <section class="copy">
            <h2>Sign Up</h2>
            <div class="login-container">
                <p>Already have an account? <a href="../html/login.html">
                    <strong> log In </strong></a></p>
            </div>
        </section>
        
        <div class="input-container name">
            <label for="fname">Full Name</label>
            <input id="fname" name="fname" type="text" >
        </div>
        <div class="input-container email">
            <label for="email">Email</label>
            <input id="email" name="email" type="email">
        </div>
        <div class="input-container mobile">
            <label for="mobile">Mobile Number</label>
            <input id="mobile" name="mobile" type="tel">
        </div>
        <div class="input-container password">
            <label for="password">Password</label>
            <input id="password" name="password" type="password" placeholder="Must be at least 6 characters ">
            <i class="far fa-eye-slash"></i>
        </div>
        <div class="input-container confirm">
            <label for="password">Confirm Password</label>
            <input id="password" name="password" type="password" >
            <i class="far fa-eye-slash"></i>
        </div>
        <div class="input-container cta">
            <label class="checkbox-container">
                <input type="checkbox">
                <label for="check" class="p1">Remember Password</label>
                <span class="checkmark"></span>
                
            </label>
        </div>
        <button class="signup-btn" type="submit">Sign Up </button>
        <section class="copy legal">
            <p><span class="small">By continuing, you agree to accept our <br> <a href="#">Privacy Policy </a> &amp; <a href="#">Terms of Service</a>.</span></p>
        </section>
    </form>
    
  </div>
   </div>
</body>
</html>