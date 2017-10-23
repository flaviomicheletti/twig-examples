<?php

require "../vendor/autoload.php";

$loader = new Twig_Loader_Filesystem('./');
$twig   = new Twig_Environment($loader);


#
# criando algumas variáveis
#
$arr  = [
    'a' => 'pri',
    'b' => 'seg',
    'c' => 'ter',
];

#
# your template
#
echo $twig->render('index.tpl', ["arr"  => $arr]);

