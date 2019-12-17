## Port Commands

## Make Port publicly accessible
```
firewall-cmd --zone=public --add-port='port-number'/tcp --permanent

firewall-cmd --reload
```