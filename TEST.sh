echo Result $? expected 0
./RUN.sh qw
echo Result $? expected 1
./RUN.sh qw qw
echo Result $? expected 2
./RUN.sh qw qw qw
echo Result $? expected 3