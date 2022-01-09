for i in ./*.jpeg;
  do ffmpeg -i "$i" ./out/${i%.*}.webp;
done
