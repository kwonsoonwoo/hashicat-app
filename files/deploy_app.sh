#!/bin/bash
# Copyright (c) HashiCorp, Inc.

# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << 'EOM' > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Meow!</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #fdfdfd;
      margin: 0;
      padding: 0;
    }
    .container {
      max-width: 800px;
      margin: 50px auto;
      text-align: center;
    }
    img {
      max-width: 100%;
      height: auto;
      border-radius: 8px;
    }
    h2 {
      color: #333;
      margin-top: 20px;
    }
    p {
      font-size: 1.1em;
      color: #555;
    }
  </style>
</head>
<body>
  <div class="container">
    <!-- BEGIN -->
    <img src="http://${PLACEHOLDER}/${WIDTH}/${HEIGHT}" alt="Meow Image">
    <h2>Meow World!</h2>
    <p>Welcome to ${PREFIX}'s app. Metanet T Platform</p>
    <!-- END -->
  </div>
</body>
</html>
EOM

echo "Script complete."
