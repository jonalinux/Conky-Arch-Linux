#!/bin/bash

url="https://www.iqair.com/uk/england/birmingham"

x=$(lynx -dump "$url" | grep "Humidity" | cut -d " " -f 8-)
y=$(lynx -dump "$url" | grep "Wind" | cut -d " " -f 11-)


echo "$x" > ~/.config/conky/data/humidity
echo "$y" > ~/.config/conky/data/wind



