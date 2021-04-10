#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color
GREEN='\033[0;32m'
#Testing TCP ports 
nc -vz tokbox.com 443 >/dev/null 2>&1 & 
if [ $? = 0 ]
then
  echo -e "${GREEN}TCP connection to tokbox succesful!${NC}"
else 
  echo -e "${RED}TCP connection to tokbox failed!${NC}"
fi
nc -vz opentok.com 443 >/dev/null 2>&1 &
if [ $? = 0 ]
then
  echo -e "${GREEN}TCP connection to opentok succesful!${NC}"
else 
  echo -e "${RED}TCP connection to opentok failed!${NC}"
fi
nc -vz events.q4inc.com 443 >/dev/null 2>&1 &
if [ $? = 0 ]
then
  echo -e "${GREEN}TCP connection to events.q4inc.com succesful!${NC}"
else 
  echo -e "${RED}TCP connection to events.q4inc.com failed!${NC}"
fi
nc -vz twilio.com 443 >/dev/null 2>&1 &
if [ $? = 0 ]
then
  echo -e "${GREEN}TCP connection to twilio succesful!${NC}"
else 
  echo -e "${RED}TCP connection to twilio failed!${NC}"
fi
#nc -vz callstats.io 443 >/dev/null 2>&1 &
if [ $? = 0 ]
then
  echo -e "${GREEN}TCP connection to callstats succesful!${NC}"
else 
  echo -e "${RED}TCP connection to callstats failed!${NC}"
fi
#nc -vz pendo.io 443 >/dev/null 2>&1 &
if [ $? = 0 ]
then
  echo -e "${GREEN}TCP connection to pendo.io succesful!${NC}"
else 
  echo -e "${RED}TCP connection to pendo.io failed!${NC}"
fi
#nc -vz launchdarkly.com 443 >/dev/null 2>&1 &
if [ $? = 0 ]
then
  echo -e "${GREEN}TCP connection to launchdarkly succesful!${NC}"
else 
  echo -e "${RED}TCP connection to launchdarkly failed!${NC}"
fi
#nc -vz sentry.io 443 >/dev/null 2>&1 &
if [ $? = 0 ]
then
  echo -e "${GREEN}TCP connection to sentry.io succesful!${NC}"
else 
  echo -e "${RED}TCP connection to snetry.io failed!${NC}"
fi

#Testinng UDP ports

nc -vzu tokbox.com 3478 >/dev/null 2>&1 &
if [ $? = 0 ]
then
  echo -e "${GREEN}UDP connection to opentok succesful!${NC}"
else 
  echo -e "${RED}UDP connection to opentok failed!${NC}"
fi
nc -vzu opentok.com 3478 >/dev/null 2>&1 &
if [ $? = 0 ]
then
  echo -e "${GREEN}UDP connection to opentok succesful!${NC}"
else 
  echo -e "${RED}UDP connection to opentok failed!${NC}"
fi




