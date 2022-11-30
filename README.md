
In this guide, we show you how easy it is to launch and run Dreambooth on GPUs with Brev. Everything is pre-configured so you won't have any hassle to get setup! The Dreambooth implementation we use is based on the [Joe Penna repo](https://github.com/JoePenna/Dreambooth-Stable-Diffusion).

And if you'd rather not read, we've also made a [Youtube Video](https://www.youtube.com/watch?v=_DrANxqqyxY&t=266s&ab_channel=brev) for this.

## What is Dreambooth?

**DreamBooth** was originally developed by [Google](https://arxiv.org/abs/2208.12242) as a way to fine-tune text-to-image models. The incredible ML community then found a way to use techniques from Dreambooth to fine-tune the [stable diffusion models](https://huggingface.co/CompVis/stable-diffusion-v1-4) and generate samples of any subject.

## To get started, hit this [link](https://console.brev.dev/environment/new?&repo=https://github.com/brevdev/stable-diffusion-dreambooth.git&instance=g5.2xlarge&diskStorage=70) to create a new Dreambooth Brev environment from our template

1. Sign up for an account
2. It'll redirect you to an environment creation page **pre-configured with the defaults you need.** (We recommend sticking with the default GPU).

3. At the bottom, add a payment method...we give you 30 minutes free but we just need to make sure people don't abuse our systems 🙂
4. Hit create!

## Open your new Dreambooth Brev environment

```
brev open dreambooth --wait
```

This will open VSCode after installing all dependencies and model files. If you don't have the Brev CLI, install it [here](https://brev.dev/docs/how-to/install-cli).

## Running Dreambooth

The first thing you'll want to do is upload your fine-tuning images. With VSCode, you can just drag and drop them in. Some things to consider:

- Use a varied set of images (e.g. different angles, different lighting, different backgrounds, etc.)
- Stick to either JPG, PNG or HEIC (we run a script that converts from HEIC to JPG behind the scenes)
- Upload an even number of pictures

In launch.sh, change the variable **DATA_DIR** on line 1 to the name of the folder with your training images. Then run:

```
sh launch.sh
```

This will take about 20 minutes to run...

## Generating samples

Once the finetuning is done, you'll see your fine-tuned model **output-model.ckpt** in the base directory. To generate samples, we'll use **inference.sh**. Change line 10 of inference.sh to a prompt you want to use then run:

```
sh inference.sh
```

It'll generate 4 images in the **outputs** folder. Make sure your prompt always includes your dreambooth token followed by the class name (we use "person" as the class by default). For example, if your dreambooth token is "johnsmith" and you want to generate a picture of a person, your prompt should include "johnsmith person".

## Some more prompts to try

- **<Dreambooth token>** person in the style of kentaro miura, 4 k, 8 k, absolute detail of even the smallest details and particles, beautiful shadows, beautiful art, black and white drawing, high rendering of the details of the environment, faces and characters
- Uncanny Valley, **<Dreambooth token>** person, 3D render
- Film still from [film name], closeup of **<Dreambooth token>** person, cinematography by [director’s name], [decade film was made], dramatic lighting, bokeh, grainy
- Film still of **<Dreambooth token>** person as a stopmotion character, Kubo and the Two Strings, ParaNorman, Aardman, Laika Studios, grainy


Send us your creations on [Discord!](https://discord.gg/NVDyv7TUgJ)
