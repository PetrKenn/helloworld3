TOTAL=0
SUCCESS=0
function test {
    desc=$1
    exp=$2
    shift 2
    echo $desc
    ./RUN.sh $@
    result=$?
    let "TOTAL++"
    echo Result $result expected $exp
    if [ $result -eq $exp ]; then
        let "SUCCESS = $SUCCESS + 1"
        echo success. Result $result expected $exp
    else
        echo Fail. Result $result expected $exp
    fi
}
test "БЕЗ ПАРАМЕТРОВ" 0
test "С ОДНИМ ПАРАМЕТРОМ" 1 foo
test "С ДВУМЯ ПАРАМЕТРАМИ" 2 foo bar
test "С ТРЕМЯ ПАРАМЕТРАМИ" 3 foo bar bas

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
