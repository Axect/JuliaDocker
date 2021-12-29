# JuliaSci

## Usage

1. Clone this repository
```shell
git clone https://github.com/Axect/JuliaSci

# or

git clone git@github.com:Axect/JuliaSci.git
```

2. Build
```shell
docker build -t juliasci \
--build-arg USER_ID=$(id -u) \
--build-arg GROUP_ID=$(id -g) .
```

3. Move to preferred directory
```shell
cd <PREFERRED_DIRECTORY>
```

3. Run as background (for VSCode)
```shell
docker run --net=host -itd \
--mount "type=bind,src=$(pwd),dst=/home/rakhan" \
--workdir /home/rakhan
--user rakhan
--name julia_sci juliasci bash
```

4. Open VSCode

5. Click "Open a Remote Window" (You can find it left-bottom)

6. Select "Attach to Running Container"

7. Select `julia_sci`
