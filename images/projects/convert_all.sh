for file in *; 
do 
echo "Processing $file"; 
convert "$file" -resize x1000 -strip -auto-orient -quality 85 "./web/$(basename "${file%.*}").webp"; 
done
