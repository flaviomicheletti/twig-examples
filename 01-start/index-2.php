<?php

require "../vendor/autoload.php";

$loader = new Twig_Loader_Filesystem('./templates');

$twig = new Twig_Environment($loader);

$template = $twig->load('index.html');

echo $template->render(array('name' => 'Fabien'));
