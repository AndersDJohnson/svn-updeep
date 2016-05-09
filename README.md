# svn-updeep

From an SVN checkout directory (or sub-directory):
```
./svn-updeep.sh MyApp/branches/1.0
```
This, like `mkdir -p`, will create and `--set-depth empty` on all but childmost directory that it will checkout with `--set-depth infinity`.
