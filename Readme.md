# Directory browsing in docker


```
docker run -d -p 8086:80 -v /mnt:/mnt/data
 --name file_list logidockerhub/directorybrowser
 ```

## Explanation
1. run : run the specific image as container
2. -d :  detach mode (run in background)
3. -p 8086:80: -p specify the port to expose

    8086: It can change.

    80: It is fixed
4. -v /mnt:/mnt/data : -v attach volume to container

    /mnt: It can change (your local server path)

    If your local server is windows may it look like below
    
    D:/path/folder

    /mnt/data: It is fixed.

    If you use same port you can check through this url [http://localhost:8086/](http://localhost:8086/)


Note: If you are getting error or warning like this `WARNING: The requested image's platform (linux/amd64) does not match the detected host platform (linux/arm64/v8) and no specific platform was requested` Please use below command with you required changes


```
 docker run -d -p 8086:80 -v /mnt:/mnt/data
 --name file_list logidockerhub/directorybrowser:arm64
```


# Own build
If you want to create a own build
## Clone 

```
git clone https://github.com/logesh810/DirectoryBrowsingDocker.git
```
## Change Directory
```
cd DirectoryBrowsingDocker
```
## Normal build
```
docker build -t directorybrowser .
```
or
## arm64 build
```
docker build --platform linux/arm64 -t directorybrowser:arm64 .
```

