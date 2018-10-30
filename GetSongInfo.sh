Artist=$(qdbus org.mpris.clementine /Player org.freedesktop.MediaPlayer.GetMetadata | grep -i artist)
echo ${Artist[@]^}
Album=$(qdbus org.mpris.clementine /Player org.freedesktop.MediaPlayer.GetMetadata | grep -i album)
echo ${Album[@]^}
Album=$(qdbus org.mpris.clementine /Player org.freedesktop.MediaPlayer.GetMetadata | grep -i title)
echo ${Album[@]^}
