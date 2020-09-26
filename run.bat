@ECHO OFF
date /t
echo - Mission-Chief-Autobot
echo - Creative Commons Attribution-NonCommercial 4.0 International License -
echo - Copyright 2020 Maciek Bogdan
echo checking for new requirements
cd scripts
py get-pip.py && python3 get-pip.py && python get-pip.py
cd ../botfiles
pip install -r requirements.txt
py missionchief_bot.py && python3 missionchief_bot.py  && python missionchief_bot.py

if %errorlevel% == 0 (
  echo Oh something seemed to crash, maybe post an issue.. We'll try re-running!
  py missionchief_bot.py && python3 missionchief_bot.py
)
pause