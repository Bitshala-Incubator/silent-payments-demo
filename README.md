# Bitplebs - Silent Payments

## What is Silent Payments?

Silent Payments (BIP352) is a Bitcoin protocol that enables receiving private payments from anyone on a single static address without requiring any interaction or extra on-chain overhead. Unlike traditional Bitcoin transactions that require communication or leave metadata, silent payments use static addresses that can't be linked to payments on-chain. Transactions appear indistinguishable from regular ones, protecting sender and receiver privacy, supporting CoinJoins, and avoiding accidental address reuse. The protocol leverages elliptic curve cryptography, requiring recipients to scan the blockchain for payments, and includes label support for easy payment management. It’s upgradeable, compatible with standard wallet backups, and designed to balance privacy, convenience, and security.


## Timeline

| Topic                            | Duration in minutes   | Format       |
| -------------------------------- | --------------------- | ------------ |
| Introduction to Silent Sayments  | 20                    | Presentation |
| Workshop Introduction            | 10                    | Presentation |
| Silent Payments Demo             | 60                    | Workshop     |
| Problem Statement Description    | 5                     | Discussion   |
| Brainstorming Session            | 25                    | Discussion   |

## Workshop Instructions

### Pre-requisites

- Install Docker Desktop on your machine ([installation link](https://www.docker.com))
- Install the latest version of NodeJS ([installation link](https://nodejs.org/en/download))

_More instructions coming soon_

## Additional Reading Materials

- [Website](https://silentpayments.xyz)
- [BIP352](https://github.com/bitcoin/bips/blob/master/bip-0352.mediawiki)
- [Ruben Somsen's blog](https://gist.github.com/RubenSomsen/c43b79517e7cb701ebf77eec6dbb46b8)
- [Tanveer's blog](https://gist.github.com/notTanveer/129868e2c039cda3ff13d1b7547a02df)
- [Bitcoin Optech](https://bitcoinops.org/en/topics/silent-payments/)
- [Area Bitcoin's blog](https://blog.areabitcoin.co/silent-payments/)
- BitBox's blog series ([part-1](https://bitbox.swiss/blog/understanding-silent-payments-part-one/) & [part-2](https://bitbox.swiss/blog/understanding-silent-payments-part-two/))

## Brainstorming Session

### Description

- Explore and brainstorm practical approaches to integrate Silent Payments with mobile wallets. We'll discuss potential challenges, propose solutions, and identify optimizations to make Silent Payments usable in constrained environments.
- Explore and brainstorm approaches to integrate Silent Payments with hardware wallets. We'll discuss potential challenges that come with hardware wallet integration.

### Expectation

- Generate actionable ideas for improving silent payment scanning efficiency on light clients.
- Identify practical strategies to enable secure silent payments with hardware wallets.


