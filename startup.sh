#!/bin/bash
#---- this script makes projects for full-stack development

if [ "$#" -ne 1 ]; then
    printf 'ERROR! You must provide a single argument for the folder name!\n' >&2
    exit 1
fi

mkdir -p $1/images $1/css $1/scripts
touch $1/index.html $1/css/styles.css $1/css/stylenorm.css $1/scripts/main.js

printf "<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
  <title>Project</title>
  <script src=\"scripts/main.js\"></script>
  <link rel=\"stylesheet\" href=\"css/styles.css\">
  <link rel=\"stylesheet\" href=\"css/stylenorm.css\">
</head>
<body onload=test()>
  <h1>This should be blue if the css is working.</h1>
  <h2 id=\"heading2\">Js is not working.</h2>
</body>
</html>
" >> $1/index.html

printf "h1 {color: blue;}" >> $1/css/styles.css

echo "progress,sub,sup{vertical-align:baseline}*,::after,::before{box-sizing:border-box}html{-moz-tab-size:4;tab-size:4;line-height:1.15}body{margin:0;font-family:system-ui,-apple-system,'Segoe UI',Roboto,Helvetica,Arial,sans-serif,'Apple Color Emoji','Segoe UI Emoji'}hr{height:0;color:inherit}abbr[title]{text-decoration:underline dotted}b,strong{font-weight:bolder}code,kbd,pre,samp{font-family:ui-monospace,SFMono-Regular,Consolas,'Liberation Mono',Menlo,monospace;font-size:1em}small{font-size:80%}sub,sup{font-size:75%;line-height:0;position:relative}sub{bottom:-.25em}sup{top:-.5em}table{text-indent:0;border-color:inherit}button,input,optgroup,select,textarea{font-family:inherit;font-size:100%;line-height:1.15;margin:0}button,select{text-transform:none}[type=button],[type=reset],[type=submit],button{-webkit-appearance:button}::-moz-focus-inner{border-style:none;padding:0}:-moz-focusring{outline:ButtonText dotted 1px}:-moz-ui-invalid{box-shadow:none}legend{padding:0}::-webkit-inner-spin-button,::-webkit-outer-spin-button{height:auto}[type=search]{-webkit-appearance:textfield;outline-offset:-2px}::-webkit-search-decoration{-webkit-appearance:none}::-webkit-file-upload-button{-webkit-appearance:button;font:inherit}summary{display:list-item}" >> $1/css/stylenorm.css

printf "function test() {
  var elem = document.getElementById('heading2');
  elem.innerText = \"This message means that JS is working.\"
}" >> $1/scripts/main.js