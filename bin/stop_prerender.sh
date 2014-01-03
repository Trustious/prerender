DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pushd $DIR/..

kill -9 $(cat pids/prerender.pid) && rm pids/prerender.pid
