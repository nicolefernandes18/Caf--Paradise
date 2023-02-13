<html>
    <head>
        <title>Café Paradise</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">       
        <link rel="icon" href="images/cafe2.jpg" type="image/x-icon">
        <script type="text/javascript">
             function validateNonEmpty(inputField, helpText) {
              // See if the input value contains any text
        return validateRegEx(/.+/,inputField.value, helpText,"Please enter a value.");
      }
      
      function validateRegEx(regex, input, helpText, helpMessage) {
        // See if the input data validates OK
        if (!regex.test(input)) {
          // The data is invalid, so set the help message and return false
          if (helpText != null)
            helpText.innerHTML = helpMessage;
          return false;
        }
        else {
          // The data is OK, so clear the help message and return true
          if (helpText != null)
            helpText.innerHTML = "";
          return true;
        }
      }
      
      function validateUsername(inputField, helpText) {
       // First see if the input value contains data
        if (!validateNonEmpty(inputField, helpText))
          return false;

        // Then see if the input value is a ZIP code
        return validateRegEx(/^\w{4,10}$/,inputField.value, helpText,"Please enter a 4 to 10 character username.");
        }
        
          function validatePassword(inputField, helpText) {
       // First see if the input value contains data
        if (!validateNonEmpty(inputField, helpText))
          return false;

        // Then see if the input value is a ZIP code
        return validateRegEx(/^\w{6,100}$/,inputField.value, helpText,"Weak password!Try Again");
        }
        
        function validateemail(inputField ,helpText)
        {
            if(!validateNonEmpty(inputField,helpText))
                return false;
            
            return validateRegEx(/^[\w\-_\+]+@[\w-]+(\.\w{2,4})+$/ ,inputField.value, helpText,
            "Please enter in the format emailid@email.com  OR emailid@email.in ");
        }
        
        function validatePincode(inputField ,helpText)
        {
            if(!validateNonEmpty(inputField,helpText))
                return false;
            
            return validateRegEx(/^\d{6}$/ ,inputField.value, helpText,
            "Please enter in the format 4000_ _ ");
        }
        
          function validateMobile(inputField ,helpText)
        {
            if(!validateNonEmpty(inputField,helpText))
                return false;
            
            return validateRegEx(/^\d{10}$/ ,inputField.value, helpText,"Please enter a 10 digit number ");
        }
        
         function Validate() {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("ConfirmPassword").value;
        if (password != confirmPassword) {
            alert("Passwords do not match!");
            return false;
        }
        return true;
    }
       
         </script>
        <style>
            body{
                margin:0;
                padding:0;
                background: url("sign4.jpg");
    background-size: cover;
            }
            
            h1{
                text-align: center;
                color:   #00cc00;
                font-size: 50px;
            }
            
            .container
            {
                 width:50%;
                 height:800px;
                 padding: 16px;
                 border:10px  #cccccc;
    
                 margin: 0 auto;
                   box-shadow: 10px 15px 40px #666666;
        }

        .container label{
            margin:0;
            padding-top:10px;
            padding-bottom:10px;
            font-family:  sans-serif;
            font-size:20px;
            margin-top: 20px;
        }
        
input[type=text],
input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    
    padding-bottom:12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
     text-align: center;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    font-size: 18px;
     border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn,.signupbtn {
    float: left;
    width: 50%;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}




</style>

    </head>
    <body>
        <h1>Signup  Form</h1>

<form action="RegisterServ.do" style="border:1px solid #ccc" name="f1" onsubmit="return validation()" method="POST">
  <div class="container">
      <label><b>Username</b></label>
    <input id="user" type="text" placeholder="Enter Username" name="uname" required
    onblur="validateUsername(this,document.getElementById('user_help'))" />
    <span id="user_help"  style="font-size:20px;color: #330099;font-weight:bold" ></span><br>
    
    <label><b>Email  <span class="glyphicon glyphicon-envelope"></span></b></label>
    <input id="email" type="text" placeholder="Enter Email" name="email" required
     onblur="validateemail(this,document.getElementById('email_help'))" />
    <span id="email_help"  style="font-size:20px;color: #330099;font-weight:bold" ></span><br>
    
    <label><b>Address  </b></label>
    <input id="address" type="text" placeholder="Enter your Address" name="address" required>
    
    <label><b>Pincode</b></label>
    <input id="pincode" type="text" placeholder=" Complete the last digits of 4000_ _" name="pincode" required
     onblur="validatePincode(this,document.getElementById('pincode_help'))" />
    <span id="pincode_help"  style="font-size:20px;color: #330099;font-weight:bold" ></span><br>

      <label><b>Mobile Number</b></label>
    <input id="mobile" type="text" placeholder=" +91 " name="mobile" required
     onblur="validateMobile(this,document.getElementById('mobile_help'))" />
    <span id="mobile_help"  style="font-size:20px;color: #330099;font-weight:bold" ></span><br>

    <label><b>Password</b></label>
    <input id="password" type="password" placeholder="Enter Password" name="psw" required
    onblur="validatePassword(this,document.getElementById('password_help'))" />
    <span id="password_help"  style="font-size:20px;color: #330099;font-weight:bold" ></span><br>

    <label><b>Confirm Password</b></label>
    <input id="ConfirmPassword" type="password" placeholder="Repeat Password" name="psw-repeat" required  >
    
    <input type="checkbox" checked="checked" > Remember me
    <p style="font-size:20px ">By creating an account you agree to our <a href="#" style="color: #0000ff">Terms & Privacy</a>.</p>

    <br>
       <%  
StringBuffer sb=new StringBuffer();  
for(int i=1;i<=5;i++)  
{  
    sb.append((char)(int)(Math.random()*79+23+7));  
}  
String cap=new String(sb);  
%>  
<div style="background-color: skyblue">  
<center>  
<h1> Enter Captcha </h1>  
<script type ="text/javascript">  
function validation(){  
    var c = document.forms ["f1"]["cap1"].value;  
      var cp = document.forms ["f1"]["cap2"].value;  
    if(c==null||c=="")  
    {  
       alert("Please Enter Captcha!");
       return false;  
    } 
    else if(c != cp) {
            alert("Captcha does not match!");
            return false;
        }
        else
        {
     return true;
        }
}  
</script>  

<table border="0">  
    <tbody>  
       <tr>  
        <td>  
          <div style="background-color: aqua"><h2><s><i><font face="casteller"><%=cap%></font></i></s></h2></div>  
        </td>  
        <td><input type="text" name="cap1" value="" /></td>  
        <td><input type="hidden" name="cap2" value='<%=cap%>' readonly="readonly" </td>  
      </tr>  
   </tbody>  
</table>  
<input type="reset" value="Reset" />  
 
    </center>  
    </div>
      <button type="button" class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn" onclick="return Validate()">Sign Up</button>
   
  </div>
</form>

    </body>
</html>

