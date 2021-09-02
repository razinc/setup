#Set-ExecutionPolicy RemoteSigned

Set-Variable -name "user" -value "__razn__"
cp C:\Users\$user\Pictures . -Recurse -force
cp C:\Users\$user\Downloads . -Recurse -force
cp C:\Users\$user\Documents . -Recurse -force
