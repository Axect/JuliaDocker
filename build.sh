docker build -t juliadocker \
    --build-arg USER_ID=$(id -u) \
    --build-arg GROUP_ID=$(id -g) .
