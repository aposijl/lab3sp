#!/bin/bash

# очищення файлу перед записом нових чисел
> numbers.txt

# створення файлу з 5 випадковими додатними числами
for i in {1..5}
do
    echo $((RANDOM % 100 + 1)) >> numbers.txt
done

# виведення чисел на екран
echo "згенеровані числа:"
cat numbers.txt

# знаходження найменшого числа
min=$(sort -n numbers.txt | head -n 1)

# видалення всіх чисел крім найменшого
echo $min > numbers.txt

# виведення результату
echo "найменше число, яке залишилось у файлі:"
cat numbers.txt
