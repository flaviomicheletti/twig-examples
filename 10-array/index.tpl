<!DOCTYPE html>
<html>
    <head>
        <title>Start with Twig (devfuria)</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>

        <h3>Exemplo 1</h3>

        <p>
            {{ arr.a }} - {{ arr.b }} - {{ arr.c }}
            <!--  pri - seg - ter  -->
        </p>

        <p>
            {{ arr['a'] }} - {{ arr['b'] }} - {{ arr['c'] }}
            <!--  pri - seg - ter  -->
        </p>

        <p>
            {{ attribute(arr, 'a') }} - {{ attribute(arr, 'b') }} - {{ attribute(arr, 'c') }}
            <!--  pri - seg - ter  -->
        </p>


        <h3>Exemplo 2</h3>

        length is: {{ arr|length }}
        <!--  3  -->

        <h3>Exemplo 3</h3>

        first={{ arr|first }}, last={{ arr|last }}
        <!--  first=pri, last=ter   -->

        <h3>Exemplo 4</h3>

        <p>
            {% for i in arr|slice(1, 2) %}
                {{ i }},
            {% endfor %}
            <!--seg, ter, -->
        </p>

        <h3>Exemplo 5</h3>

        <p>
            {{ arr|join('#') }}
            <!-- pri#seg#ter  -->
        </p>

        <p>
            {% set foo = "pri#seg#ter"|split('#') %}
            {% for i in foo %}
                {{ i }},
            {% endfor %}
            <!-- pri, seg, ter,  -->
        </p>

        <h3>Exemplo 6 <small>(testing expression)</small></h3>

        <p>
            {{ 1 in [1, 2, 3] }}
            <!-- 1 -->
        </p>

        <p>
            {{ 'cd' in 'abcde' }}
            <!-- 1 -->
        </p>

        {% if 4 not in [1, 2, 3] %}
            <p>not contain 4</p>
        {% endif %}

        {% if not (4 in [1, 2, 3]) %}
            <p>not contain 4</p>
        {% endif %}

    </body>
</html>
