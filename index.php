<!doctype html>

<head>
<link rel="shortcut icon" type="image/x-icon" href="/img/favicon.ico">
<title>MASTR</title>
<link rel="stylesheet" type="text/css" href='css/style.css'>
</head>
<body>
<div class = "bg-img" style="background-image: img/background.png"></div>
<div class = "header" style="background-image: img/logo.png"></div>
<div class = "flex-container">
  <div class = "form-container" style = "margin-top: 10vh;">
    <form method="post" action="upload.php" enctype="multipart/form-data" onSubmit="displayLoadingScreen()">
        <input type="hidden" name="MAX_FILE_SIZE" value="0" />
        <input type="file" name="file" id="file" class="inputfile" onchange="this.form.submit(), displayLoadingScreen()">
      <label for="file">Upload .wav file</label>
    </form>
  </div>
</div>
	<script src = "js/plugins.js"></script>
</body>
