#!/bin/bash
echo "Новгородов Александр Михайлович 728-1"
echo "Поиск файлов"
echo "Поиск файлов по имени или по размеру"
while true;
do
read -p "Выберите цифру поиска: 1. По имени, 2. По размеру: "
answer=$REPLY
if [[ answer -eq "1" ]];
then
read -p "Напишите название каталога, в котором произвести поиска: "
directory=$REPLY
read -p "Напишите название файла: "
fileName=$REPLY
find $directory -name $fileName 
fi
if [[ answer -eq "2" ]];
then
read -p "Напишите название каталога, в котором произвести поиска: "
directory=$REPLY
read -p "Напишите размер файла (K): "
fileSize=$REPLY
find $directory -size +${fileSize}k -size -10000000000000000000k
fi
while true;
do
read -p "Хотите продолжить? (yes/no): "
if [[ $REPLY = "yes" ]];
then
break
fi
if [[ $REPLY = "no" ]];
then
exit
fi
done
done
