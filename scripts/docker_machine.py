import os

BG = 31  # blueish
FG = 15  # white

def add_docker_machine_segment(powerline):
    powerline.append(' %s  %s ' % (u'\U0001f433', os.getenv('DOCKER_MACHINE_NAME')), FG, BG)
