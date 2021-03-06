<?php

require "../vendor/autoload.php";

$loader = new Twig_Loader_Filesystem('./templates');
$twig   = new Twig_Environment($loader);

#
# criando algumas variáveis
#
$flag = (rand(0, 1)) ? true : false;
$arr  = [rand(1, 10), rand(1, 10), rand(1, 10), rand(1, 10), rand(1, 10)];
$foo  = new Foo();
class Foo {
    public $bar  = 'prop 1';
    public $die  = 'prop 2';
    public $lish = 'prop 3';
}

#
# your template
#
echo $twig->render('index.html', [
    "flag" => $flag,
    "arr"  => $arr,
    "foo"  => $foo
]);
