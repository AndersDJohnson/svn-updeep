
CK=$1

echo "$CK"
DIR="."
PARTS=$(echo "$CK" | tr "/" "\n")
for PART in $PARTS
do
DIR="$DIR/$PART"
echo $DIR
if [ ! -d "$DIR" ]; then
  echo "EMPTY"
  svn up --set-depth empty "$DIR"
fi
done
svn cleanup "$DIR"
svn up --set-depth infinity "$DIR"

echo "DONE"
