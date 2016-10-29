# zcash-mining

## Background

[Zcash](https://z.cash/) is a new crypto-currency in the market which has gained [immense popularity](http://www.coindesk.com/investors-going-crazy-new-digital-currency-called-zcash/) within hours of the blockchain going live!
I have comeup with a real quick way of getting started with mining Zcash. The requirements are:

- 64 bit Debian Based Distro (_Other distros mare require you to compile from [source](https://github.com/zcash/zcash)_)
- 4 GB RAM
- Atleast 8 GB Storage

Includes the CLI and CORE of the platform

## Installation 

```bash
$ wget --no-check-certificate https://raw.githubusercontent.com/kamikazechaser/zcash-mining/master/install.sh
$ sudo chmod 777 install.sh
$ ./install.sh
```
## Running it

Simply run `zcashd` in a terminal window to start mining on the **main** Blockchain~

_You can add the -d flag to the above command to run it in the background_

You should end up with something like this below:

[![](main.png)](https://github.com/kamikazechaser/zcash-mining)

## Issues And Contribution

Fork the repository and submit a pull request for whatever change you want to be added to this project. If you have any questions, just open an issue.
