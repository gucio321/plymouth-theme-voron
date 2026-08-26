#!/bin/bash
rm -rf frames
mkdir -p frames

ffmpeg -y \
  -loop 1 -i logo.png \
  -f lavfi -i "color=c=black@0:s=600x600:r=30" \
  -filter_complex "
    [0:v]
      format=rgba,
      scale=400:400:force_original_aspect_ratio=decrease,

      rotate=
        '2*PI*(t/3 + 0.035*sin(4*PI*t/3))':
        c=none:
        ow=rotw(iw):
        oh=roth(ih),

      scale=
        w='iw*(1+0.08*sin(2*PI*t/3))':
        h='ih*(1+0.08*sin(2*PI*t/3))':
        eval=frame
      [logo];

    [1:v][logo]
      overlay=
        x='(W-w)/2':
        y='(H-h)/2':
        format=auto
      [out]
  " \
  -t 3 \
  -map "[out]" \
  -c:v png \
  -pix_fmt rgba \
  frames/progress-%d.png
