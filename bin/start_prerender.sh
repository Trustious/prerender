DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export DATE=`date +%F-%H`

pushd $DIR/..

if [ ! "$PRERENDER_WORKDIR_PREFIX" ]
then
PRERENDER_WORKDIR_PREFIX="."
fi

LOG_DIR=$PRERENDER_WORKDIR_PREFIX/logs
mkdir -p $LOG_DIR

PID_DIR=$PRERENDER_WORKDIR_PREFIX/pids
mkdir -p $PID_DIR

node index.js &>> $LOG_DIR/$DATE.log &
echo $! > $PID_DIR/prerender.pid
