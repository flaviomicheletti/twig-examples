<?php

require "../vendor/autoload.php";

$loader = new Twig_Loader_Filesystem('./templates');
$twig = new Twig_Environment($loader);

#
# criando algumas variáveis
#
$var = "text for foo";

echo $twig->render('index.html', [
    "foo" => $var,
]);
