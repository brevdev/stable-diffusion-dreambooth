import os
import shutil

# list files in directory logs
directories = os.listdir('logs')
lastDirectory = directories[-1]
lastCheckpoint = 'logs/'+lastDirectory + "/checkpoints/last.ckpt"
# move model to models directory
# os.rename(lastCheckpoint, "output-model.ckpt")
shutil.move(lastCheckpoint, "output-model.ckpt")