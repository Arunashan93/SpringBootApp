
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="utf-8">

	<!-- Javascript SDKs-->
	<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script> 
	<script src="js/amazon-cognito-auth.min.js"></script>
	<script src="https://sdk.amazonaws.com/js/aws-sdk-2.7.16.min.js"></script> 
	<script src="js/amazon-cognito-identity.min.js"></script>   
    <script src="js/config.js"></script>

  </head>
  <body>
    <form>
      <h1>Please sign in</h1>

      <input type="text" id="inputUsername"  placeholder="Email address" name="username" required autofocus>
      <input type="password" id="inputPassword"  placeholder="Password" name="password" required>    
      <button type="button" onclick="signInButton()">Sign in</button>

    </form>


<script>

  function signInButton() {
    
	var authenticationData = {
        Username : document.getElementById("inputUsername").value,
        Password : document.getElementById("inputPassword").value,
    };
	
    var authenticationDetails = new AmazonCognitoIdentity.AuthenticationDetails(authenticationData);
    
	var poolData = {
			 UserPoolId : 'us-east-1_SqKFLIfpp',// Your user pool id hereus-east-1_SqKFLIfpp
			 ClientId : '6mni63mi9rrjm9r4g5v4juf414',// Your client id here 6mni63mi9rrjm9r4g5v4juf414
    };
	
    var userPool = new AmazonCognitoIdentity.CognitoUserPool(poolData);
	
    var userData = {
        Username : document.getElementById("inputUsername").value,
        Pool : userPool,
    };
	
    var cognitoUser = new AmazonCognitoIdentity.CognitoUser(userData);
    
	cognitoUser.authenticateUser(authenticationDetails, {
        onSuccess: function (result) {
			var accessToken = result.getAccessToken().getJwtToken();
			console.log(accessToken);	
			location.replace("/books");
        },

        onFailure: function(err) {
            alert(err.message || JSON.stringify(err));
        },
    });
  }
</script>
</body>
</html>






