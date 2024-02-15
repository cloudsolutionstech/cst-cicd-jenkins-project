<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jenkins Docker Training</title>
</head>
<body>
    <h2>Hello! Welcome to Cloud Solutions Tech...</h2>
    <p>
        <span id="loginStatus" style="display: none;">Welcome back! You are currently logged in.</span>
        <span id="loginPrompt">Please log in to access more features.</span>
    </p>
    <script>
        var isUserLoggedIn = true; // Change this value based on user login status
        if (isUserLoggedIn) {
            document.getElementById("loginStatus").style.display = "inline";
            document.getElementById("loginPrompt").style.display = "none";
        } else {
            document.getElementById("loginStatus").style.display = "none";
            document.getElementById("loginPrompt").style.display = "inline";
        }
    </script>
</body>
</html>

