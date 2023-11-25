<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <style>
        .error {
            color: red;
        }
    </style>
</head>
<body>
    <h2>User Registration Form</h2>
    <form id="registrationForm" onsubmit="return validateForm()" action="list" method="post">
         <label for="srlNo">Serial No.:</label>
        <input type="enum" id="srlNo" name="srlNo">
        <span id="srlNoError" class="error"></span>

        <br>
         
        <label for="fname">First Name:</label>
        <input type="text" id="fname" name="fname">
        <span id="fnameError" class="error"></span>

        <br>

        <label for="mname">Middle Name:</label>
        <input type="text" id="mname" name="mname">
        <span id="mnameError" class="error"></span>

        <br>

        <label for="lname">Last Name:</label>
        <input type="text" id="lname" name="lname" >
        <span id="lnameError" class="error"></span>

        <br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email">
        <span id="emailError" class="error"></span>

        <br>

        <label for="gender">Gender:</label>
        <select id="gender" name="gender" >
            <option value="">Select Gender</option>
            <option value="male">Male</option>
            <option value="female">Female</option>
            <option value="other">Other</option>
        </select>
        <span id="genderError" class="error"></span>

        <br>

        <label for="contactNo">Contact Number:</label>
        <input type="num" id="contactNo" name="contactNo" pattern="[0-9]{10}" >
        <span id="contactNoError" class="error"></span>

        <br>

        <label for="area">Area:</label>
        <input type="text"  id="area" name="area" >
        <span id="areaError" class="error"></span>

        <br>

        <label for="district">District:</label>
        <select  id="district" name="district" >
        	 <option value="">Select district</option>
            <option value="Bengaluru">Bengaluru</option>
            <option value="Shivamogga">Shivamogga</option>
             <option value="Mysoru">Mysoru</option>
            <option value="Mangluru">Mangluru</option>
        </select>
        <span id="districtError" class="error"></span>

        <br>

        <label for="state">State:</label>
 		 <select  id="state" name="state" >
        	 <option value="">Select state</option>
            <option value="Karnataka">Karnataka</option>
            <option value="Kashmir">Kashmir</option>
             <option value="Maharastra">Maharastra</option>
            <option value="Andra">Andra</option>
        </select>       
         <span id="stateError" class="error"></span>

        <br>

        <label for="pincode">Pincode:</label>
        <input type="text" id="pincode" name="pincode" pattern="[0-9]{6}" required>
        <span id="pincodeError" class="error"></span>

        <br>

        <input type="submit" value="Submit">
    </form>

    <script>
    
    function validateForm() {
        var srlNo = document.getElementById('srlNo').value;
        var srlNoError = document.getElementById('srlNoError');
        if (srlNo!==null) {
        	srlNoError.innerHTML = 'Please select below option.';
            return false;
        } else {
        	srlNoError.innerHTML = '';
        }
        return true; 
    }
    
        function validateForm() {
            var fname = document.getElementById('fname').value;
            var fnamex = /^[a-zA-Z]+$/;
            var fnameError = document.getElementById('fnameError');
            if (!fnamex.test(fname) && fnamex!=="") {
                fnameError.innerHTML = 'Invalid first name. Use only letters.';
                return false;
            } else {
                fnameError.innerHTML = '';
            }
            return true; 
        }
        
        function validateForm() {
            var mname = document.getElementById('mname').value;
            var mnamex = /^[a-zA-Z]+$/;
            var mnameError = document.getElementById('mnameError');
            if (!mnamex.test(mname) && mnamex!=="") {
            	mnameError.innerHTML = 'Invalid Midle name. Use only letters.';
                return false;
            } else {
            	mnameError.innerHTML = '';
            }
            return true; 
        }
        
        function validateForm() {
            var lname = document.getElementById('lname').value;
            var lnamex = /^[a-zA-Z]+$/;
            var lnameError = document.getElementById('lnameError');
            if (!lnamex.test(mname) && lnamex!=="") {
            	lnameError.innerHTML = 'Invalid Last name. Use only letters.';
                return false;
            } else {
            	lnameError.innerHTML = '';
            }
            return true; 
        }
        
        function validateForm() {
            var email = document.getElementById('email').value;
            var emailx = /^[a-zA-Z]+$+@+[0-9]/;
            var emailError = document.getElementById('emailError');
            if (!emailx.test(email) && emailx.isEmpty()) {
            	emailError.innerHTML = 'Invalid email id.';
                return false;
            } else {
            	emailError.innerHTML = '';
            }
            return true; 
        }
        
        function validateForm() {
            var genderx = document.getElementById('gender').value;
            var genderError = document.getElementById('genderError');
            if (genderx!="" && genderx.isEmpty()) {
            	genderError.innerHTML = 'Please select below option.';
                return false;
            } else {
            	genderError.innerHTML = '';
            }
            return true; 
        }
        
        function validateForm() {
            var contactNo = document.getElementById('contactNo').value;
            var contactNox = /^[0-9]+$/;
            var contactNoError = document.getElementById('contactNoError');
            if (!contactNox.length()==10) {
            	contactNoError.innerHTML = 'Invalid Contact Number.';
                return false;
            } else {
            	contactNoError.innerHTML = '';
            }
            return true; 
        }
        
        function validateForm() {
            var area = document.getElementById('area').value;
            var areax = /^[a-zA-Z]+$/;
            var areaError = document.getElementById('areaError');
            if (!areax.test(area) && areax!=="") {
            	areaError.innerHTML = 'Invalid area name. Use only letters.';
                return false;
            } else {
            	areaError.innerHTML = '';
            }
            return true; 
        }
        
        function validateForm() {
            var district = document.getElementById('district').value;
            var districtError = document.getElementById('districtError');
            if (district!=="") {
            	districtError.innerHTML = 'Please select below option.';
                return false;
            } else {
            	districtError.innerHTML = '';
            }
            return true; 
        }
        
        function validateForm() {
            var state = document.getElementById('state').value;
            var stateError = document.getElementById('stateError');
            if (state!=="") {
            	stateError.innerHTML = 'Please select below option.';
                return false;
            } else {
            	stateError.innerHTML = '';
            }
            return true; 
        }
        
        function validateForm() {
            var pincode = document.getElementById('pincode').value;
            var pincodex = /^[0-9]+$/;
            var pincodeError = document.getElementById('pincodeError');
            if (!pincode.length()==6) {
            	pincodeError.innerHTML = 'Invalid pincode .';
                return false;
            } else {
            	pincodeError.innerHTML = '';
            }
            return true; 
        }
    </script>
</body>
</html>
