<?php

require "../vendor/autoload.php";

$loader = new Twig_Loader_Filesystem('./templates');

$twig = new Twig_Environment($loader);

echo $twig->render('index.html', array('name' => 'Fabien'));
