DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pushd $DIR/..

if [ ! "$PRERENDER_WORKDIR_PREFIX" ]
then
PRERENDER_WORKDIR_PREFIX="."
fi

PID_DIR=$PRERENDER_WORKDIR_PREFIX/pids
mkdir -p $PID_DIR

kill -9 $(cat $PID_DIR/prerender.pid) && rm $PID_DIR/prerender.pid
