#!/bin/bash

sudo route add default gw 192.168.32.1 metric 10
sudo route add gw 192.168.32.4 metric 20
