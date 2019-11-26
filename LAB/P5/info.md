# Introduction

This is the data for Wildcard 400 of the 2019 Trendmicro CTF.
Premise:
​You are a network security administrator for the medium sized business XYZcorp. You often use network flow data to uncover anomalous security events. This challenge provides some sample aggregated data on flows, and uses answers from the anomalous events to construct the flag.
Knowledge of network security or protocols is not required. This challenge requires data stacking, slicing, and/or anomaly detection.

# Data

* timestamp,src,dst,port,bytes
* Internal hosts have IPs beginning with 12-14
* External IPs include everything else

# Challenges

## Question 1: Discover Data Exfiltration 1

Our intellectual property is leaving the building in large chunks. A machine inside is being used to send out all of our widget designs. One host is sending out much more data from the enterprise than the others. What is its IP?

## Question 2: Discover Data Exfiltration 2

Another attacker has a job scheduled that export the contents of our internal wiki. One host is sending out much more data during off hours from the enterprise than the others, different from the host in the Question 1. What is its IP?

## Question 3: Discover Data Exfiltration 3

Some assailant is grabbing all the employee and vendor email addresses, and sending them out on a channel normally reserved for other uses. This is similar to attackers abusing DNS for data exfiltration. One host is sending out much more data on a some port from the enterprise than other hosts do, different from the hosts in Questions 1 and 2. What is its port?

## Question 4: Private C&C channel

We're always running a low-grade infection; some internal machines will always have some sort of malware. Some of these infected hosts phone home to C&C on a private channel. What unique port is used by external malware C&C to marshal its bots?

## Question 5: Internal P2P

Sometimes our low-grade infection is visible in other ways. One particular virus has spread through a number of machines, which now are used to relay commands to each other. The malware has created an internal P2P network. What unique port is used by the largest internal clique, of all hosts talking to each other?

## Question 6: Malware Controller

We were just blacklisted by an IP reputation service, because some host in our network is behaving badly. One host is a bot herder receiving C&C callbacks from its botnet, which has little other reason to communicate with hosts in the enterprise. What is its IP?

## Question 7: Infected Host

One host is part of the botnet from Question 6, what is its IP?

## Question 8 Botnet Inside

There is a stealthier botnet in the network, using low frequency periodic callbacks to external C&C, with embedded higher frequency calls. What port does it use?

## Question 9: Lateral Brute

Once a machine is popped, it's often used to explore what else can be reached. One host is being used to loudly probe the entire enterprise, trying to find ways onto every other host in the enterprise. What is its IP?

## Question 10: Lateral Spy

One host is trying to find a way onto every other host more quietly. What is its IP?