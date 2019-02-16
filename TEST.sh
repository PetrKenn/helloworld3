total=0
success=0

echo
./RUN.sh
result=$?
echo Result $result expected 0

echo
./RUN.sh qw
result=$?
echo Result $result expected 1

echo
./RUN.sh qw qw
result=$?
echo Result $result expected 2

echo
./RUN.sh qw qw qw
result=$?
echo Result $result expected 3
