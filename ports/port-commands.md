## Port Commands

## Make Port publicly accessible
```
firewall-cmd --zone=public --add-port='port-number'/tcp --permanent

firewall-cmd --reload
```


## References
1. [How to check if port is in use on Linux or Unix](https://www.cyberciti.biz/faq/unix-linux-check-if-port-is-in-use-command/)