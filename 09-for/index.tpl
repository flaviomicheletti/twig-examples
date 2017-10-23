<!DOCTYPE html>
<html>
    <head>
        <title>Start with Twig (devfuria)</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>

        <h3>Exemplo 1</h3>

        {% for i in 0..10 %}
            {{ i }}
        {% endfor %}
        <!-- 0 1 2 3 4 5 6 7 8 9 10  -->

        <h3>Exemplo 2</h3>

        <p>
            {% for letter in 'a'..'z' %}
                {{ letter }}
            {% endfor %}
            <!-- a b c d e f g h i j k l m n o p q r s t u v w x y z  -->
        </p>

        <p>
            {% for letter in 'a'|upper..'z'|upper %}
                {{ letter }}
            {% endfor %}
            <!-- A B C D E F G H I J K L M N O P Q R S T U V W X Y Z -->
        </p>


        <h3>Exemplo 3</h3>

        <p>
            {% for value in ['pri', 'seg', 'ter'] %}
                {{ value }}
            {% endfor %}
            <!-- pri seg ter  -->
        </p>

        <p>
            {% for k, value in ['pri', 'seg', 'ter'] %}
               {{ k }}={{ value }} |
            {% endfor %}
            <!-- 0=pri | 1=seg | 2=ter |  -->
        </p>

        <p>
            {% for value in ['pri', 'seg', 'ter'] %}
                {{ loop.index }}={{ value }} |
            {% endfor %}
            <!-- 1=pri | 2=seg | 3=ter |   -->
            <!--  https://twig.symfony.com/doc/2.x/tags/for.html#the-loop-variable -->
        </p>

        <p>
            {% for k in ['pri', 'seg', 'ter']|keys %}
               {{ k }},
            {% endfor %}
            <!-- 0, 1, 2, -->
        </p>

        <p>
            {% for value in ['pri', 'seg', 'ter']|slice(1, 2) %}
                {{ value }}
            {% endfor %}
            <!-- seg ter -->
        </p>

    </body>
</html>
