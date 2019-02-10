# Background Switcher
## Introduction
The scripts in this repo are designed to randomly select an image from the wallpapers directory to be used as a greeter or desktop background.

To implement switching greeter background on reboot, add the following to your root crontab:
```
@reboot sleep 5 && bash {install_directory}/greeter.sh 2>&1 > /dev/null
```

To implement switching background at 15 minute intervals, add the following to your user's crontab:
```
0,15,30,45 * * * *  env DISPLAY=:0 bash {install_directory}/switch.sh
```
