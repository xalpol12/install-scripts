#!/usr/bin/env bash

wifi_interface="wlp0s20f3"
eth_interface="enxa0cec897d36a"

# down all interfaces - just to be sure
sudo ifdown $wifi_interface
sudo ifdown $eth_interface

sudo ifup $eth_interface
