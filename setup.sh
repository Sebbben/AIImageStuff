sudo apt install virtualenv exempi
mkdir AIImageGenerator
cd AIImageGenerator
virtualenv -p /usr/bin/python3 .
cd bin
source activate
cd ..git clone https://github.com/openai/CLIP
git clone https://github.com/CompVis/taming-transformers
pip install ftfy regex omegaconf pytorch-lightning kornia einops wget stegano torchvision imageio python-xmp-toolkit imgtag pillow==9.0.0 imageio-ffmpeg
mkdir steps
curl -L -o vqgan_imagenet_f16_16384.yaml -C - 'https://heibox.uni-heidelberg.de/d/a7530b09fed84f80a887/files/?p=%2Fconfigs%2Fmodel.yaml&dl=1'
curl -L -o vqgan_imagenet_f16_16384.ckpt -C - 'https://heibox.uni-heidelberg.de/d/a7530b09fed84f80a887/files/?p=%2Fckpts%2Flast.ckpt&dl=1'