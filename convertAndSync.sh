#!/bin/bash
# uses pandoc to convert all .md files in a directory to .docx
# each converted file is copied to googledrive with rclone

todir=$(basename "$PWD")
# cat all files together and convert
mkdir -p backups
DATE=$(date +"%Y%m%d%H%M")
mv -v finalfile.md ./backups/finalfile$DATE.backup
for f in *.md; do (cat "${f}"; echo "\n***\n") >> finalfile.md; done

for filename in ./*.md; do
	file=$(basename "$filename" .md)
	echo "convert $file to .docx"
	pandoc -s -o $file.docx $filename
	echo "cloning into googledrive: $todir"
	rclone copy ./$file.docx gdrive:$todir/
done


