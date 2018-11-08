    ffmpeg -f video4linux2 -r 30 -s 640x480 -i /dev/video0 -deinterlace -f alsa -i hw:2,0 outputfile.mkv
    
쏘는
ffmpeg -f x11grab -r 15 -s 1280x720 -i :0.0+0,0 -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video1

ffmpeg -f video4linux2 -r 30 -s 1280x720 -i /dev/video1 -deinterlace -c:v libx264 -preset fast -pix_fmt yuv420p -s 1280x720 -threads 0 -f flv "rtmp://live.twitch.tv/app/live_107807969_sH56tOKcORqEwXi1DCzO5ClYl3a8gi"

ffmpeg -f video4linux2 -r 30 -s 1280x720 -i /dev/video1 -deinterlace -c:v libx264 -preset fast -pix_fmt yuv420p -s 1280x720 -threads 0 -f flv "rtmp://live.twitch.tv/app/live_269188812_4kVw9zXj10qtqvO80uSyNf8IgcKQge"

트위치쏘는
ffmpeg -f x11grab -s 1280x800 -framerate 15 -i :0.0 -c:v libx264 -preset fast -pix_fmt yuv420p -s 1280x800 -threads 0 -f flv "rtmp://live.twitch.tv/app/live_107807969_sH56tOKcORqEwXi1DCzO5ClYl3a8gi"


ffmpeg -f video4linux2 -r 30 -s 640x480 -i /dev/video1 -threads 0 -f flv "rtmp://live.twitch.tv/app/live_107807969_sH56tOKcORqEwXi1DCzO5ClYl3a8gi"


ffmpeg -f x11grab -s 1920x1200 -framerate 15 -i :0.0 -c:v libx264 -preset fast -pix_fmt yuv420p -s 1280x800 -threads 0 -f flv "rtmp://live.twitch.tv/app/live_107807969_sH56tOKcORqEwXi1DCzO5ClYl3a8gi

./ffmpeg -f video4linux2 -s 640x480 -r 15 -vcodec h264 -i /dev/video1 -an http://localhost:8099/feed1.ffm

vlc v4l2:///dev/video1
