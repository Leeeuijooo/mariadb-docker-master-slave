#!/bin/bash
rm -rf dump.sql
docker-compose -f docker-compose.yml down
rm -rf slave_status.txt
rm -rf master_status.txt
rm -rf ip_output.txt
rm -rf my_script.log
rm -rf ./master/data/*
rm -rf ./slave/data/*
