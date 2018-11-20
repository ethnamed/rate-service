# Rate Service for New Coin

### Motivation

In case when rate is not available that but it needs to define the rate url in the wallet



### Install

```
npm i pm2 -g
```

### Config

Example: HYPE coin

```JSON
{
    "constantRateUsd" : 0.3763, //Constant rate for test purpose
    "useProxy" : false,  //Use constant or use proxy
    "proxyAddress" : "https://min-api.cryptocompare.com/data/pricemulti?fsyms=HYPE&tsyms=USD", //When useProxy: true then proxy Address should be defined 
    "port": 80,
    "ip": "0.0.0.0",
    "tokenSymbol": "HYPE"
}
```

### Start

```
pm2 start server.js
```

