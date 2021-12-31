# JuliaDocker

## Usage

1. Clone this repository
```shell
git clone https://github.com/Axect/JuliaDocker

# or

git clone git@github.com:Axect/JuliaDocker.git
```

2. Build
```shell
sh build.sh
```

3. Run as background (for VSCode)
```shell
# Once at first
sh run.sh <ABSOLUTE_PATH_OF_PREFERRED_DIRECTORY>

# Everytime after first run
docker start julia_sci
```

4. Open VSCode

5. Click "Open a Remote Window" (You can find it at left-bottom)

6. Select "Attach to Running Container"

7. Select `julia_sci`
