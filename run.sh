dir=$1

docker run --net=host -itd \
    --mount "type=bind,src=$dir,dst=/home/quokka" \
    --workdir /home/quokka \
    --user quokka \
    --name julia_sci juliadocker bash \
