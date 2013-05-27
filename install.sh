PRO_DIR=`pwd`
BIN_DIR="~/workspace/bin/"
mkdir -p $BIN_DIR
cd $BIN_DIR

SHELL_LIST=`ls $PRO_DIR | grep '\.sh$'`

for i in $SHELL_LIST
do
	if [ $i != 'install.sh' ]
	then
		PRO_NAME=`echo $i | cut -d '.' -f1`
		if [ ! -L $PRO_NAME ]
		then
			ln -s $PRO_DIR/$i $PRO_NAME
		fi
	fi
done
