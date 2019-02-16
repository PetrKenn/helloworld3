TOTAL=0
SUCCESS=0

echo ВЫВОД БЕЗ ПАРАМЕТРОВ
./RUN.sh
result=$?
let "TOTAL++"
echo Result $result expected 0
if [ $result -eq 0 ]; then
let "SUCCESS = $SUCCESS + 1"
    echo success. Result $result expected 0
else
    echo Fail. Result $result expected 0
fi

echo С ОДНИМ ПАРАМЕТРОМ
./RUN.sh qw
result=$?
let "TOTAL++"
echo Result $result expected 1
let "SUCCESS = $SUCCESS + 1"
if [ $result -eq 1 ]; then
    echo success. Result $result expected 1
else
    echo Fail. Result $result expected 1
fi

echo С ДВУМЯ ПАРАМЕТРАМИ
./RUN.sh qw qw
result=$?
let "TOTAL++"
echo Result $result expected 2
if [ $result -eq 2 ]; then
let "SUCCESS = $SUCCESS + 1"
    echo success. Result $result expected 2
else
    echo Fail. Result $result expected 2
fi

echo С ТРЕМЯ ПАРАМЕТРАМИ
./RUN.sh qw qw qw
result=$?
let "TOTAL++"
echo Result $result expected 3
if [ $result -eq 3 ]; then
let "SUCCESS = $SUCCESS + 1"
    echo success. Result $result expected 3
else
    echo Fail. Result $result expected 3
fi

echo
echo Results:
echo $SUCCESS success tests out of $TOTAL
if [ $SUCCESS -eq $TOTAL ]; then
    echo ВСЕ ТЕСТЫ УСПЕШНО ПРОЙДЕНЫ
    exit 0
else
    echo ТЕСТЫ НЕ ПРОШЛИ УСПЕШНО
    exit 1
fi