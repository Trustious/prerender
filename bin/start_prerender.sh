DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export DATE=`date +%F-%H`

pushd $DIR/..

if [ ! "$PRERENDER_WORKDIR_PREFIX" ]
then
PRERENDER_WORKDIR_PREFIX="."
fi

LOG_DIR=$PRERENDER_WORKDIR_PREFIX/logs
mkdir -p $LOG_DIR

mkdir -p pids

node index.js &>> $LOG_DIR/$DATE.log &
echo $! > pids/prerender.pid
