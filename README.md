# mnem

## Overview:

This script creating new virtual environment for JavaScript implementation of [bip39](https://github.com/bitcoinjs/bip39) mnemonic code  for generating deterministic keys

I'm testing [virtualenv](https://virtualenv.pypa.io/en/latest/#) and [nodeenv](https://github.com/ekalinin/nodeenv)

## Description:

OS: Ubuntu 14.04.5 LTS

**install**
```shell
curl -Ls  https://raw.githubusercontent.com/nn1k1kvn/mnem/master/mnem_setup.sh -o  mnem_setup.sh  ; chmod +x mnem_setup.sh ; ./mnem_setup.sh ; rm -f mnem_setup.sh
```

**activate**
```shell
cd mnem/virtualenv-15.0.1 ; . venv/bin/activate ; . nenv/bin/activate; cd ../../
```
**or simple installation without environments virtualenv and nodeenv**

```shell 

# insert and save text in package.json

{
  "name": "mnem",
  "version": "0.0.1",
  "dependencies": {
    "bip39": "2.3.0"
  }
}

```
```shell
npm install

```
**example # 1**
```shell
nano test   # insert and save text
hex=$(cat test | xxd  -p); node -e "var bip39 = require('bip39'); console.log('mnemonics:', bip39.entropyToMnemonic('$hex'))"
```

**example # 2** 
```shell
mnem="gesture cart sudden slush all crouch office life jaguar maze mimic below effort culture climb";
node -e "var bip39 = require('bip39'); console.log(bip39.mnemonicToEntropy('$mnem'.trim()))" | xxd -r -p
```

**deactivate** (if only are installed environments virtualenv and nodeenv)
```shell
deactivate_node; deactivate
```
