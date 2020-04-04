## QCam
Using a webcam, encode and segment for HLS playback 

### FFMPEG Command
```
sudo ffmpeg -re -i /dev/video0 -strftime 1 -vf "scale=2*iw:-1, crop=iw/2:ih/2" \
        -preset ultrafast -tune zerolatency \
        -g 16 -keyint_min 16 -sc_threshold 0 \
        -c:v libx264 -b:v 1200k -s:v 426x240 -pix_fmt yuv420p \
        -master_pl_name master.m3u8 \
        -f hls -hls_flags delete_segments -hls_time 2 -hls_list_size 5 \
        -hls_segment_filename segment-%Y-%m-%d_%H-%M-%S.ts live.m3u8
```
