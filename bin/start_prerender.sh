DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export DATE=`date +%F-%H`

pushd $DIR/..
mkdir -p log
mkdir -p pids

node index.js &>> log/$DATE.log &
echo $! > pids/prerender.pid
