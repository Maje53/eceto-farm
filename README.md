# 🌾 Eceto's Farm

> A Web3 idle/clicker game built on **Base** (Ethereum L2) — featuring onchain leaderboards, wallet-based cloud saves, and Eceto the farm girl character.

[![Built on Base](https://img.shields.io/badge/Built%20on-Base-0052FF?style=for-the-badge&logo=coinbase)](https://base.org)
[![Netlify](https://img.shields.io/badge/Deployed%20on-Netlify-00C7B7?style=for-the-badge&logo=netlify)](https://netlify.app)
[![Supabase](https://img.shields.io/badge/Cloud%20Save-Supabase-3ECF8E?style=for-the-badge&logo=supabase)](https://supabase.com)

---

## 🎮 Gameplay

- **Tap Eceto** to collect grass
- **Buy animals** — each one passively generates grass per second
- **Upgrade your farm** — multiply tap power and production
- **Complete quests** — earn bonus grass rewards
- **Daily streaks** — log in every day for growing rewards
- **Prestige system** — reset for a permanent multiplier bonus

## ⛓️ Base Integration

Eceto's Farm is deployed on **[Base Mainnet](https://base.org)** — Coinbase's Ethereum L2.

- **Smart Contract:** [`FarmLeaderboard.sol`](./FarmLeaderboard.sol) — stores player scores onchain
- **Contract Address:** `0x6905c9D9dBB238426d8a769955aB998fE7CD006d` on Base Mainnet
- **Wallet Support:** MetaMask, Coinbase Wallet, and any EIP-1193 compatible wallet
- **Save Score:** Submit your rank + total grass onchain
- **Leaderboard:** Top 10 players fetched directly from the contract

## ☁️ Cloud Save

Game progress is saved to **Supabase** and linked to your wallet address — so your farm is accessible from any browser or device, as long as you connect the same wallet.

## 🛠️ Tech Stack

| Layer | Tech |
|-------|------|
| Frontend | Vanilla HTML/CSS/JS (single file) |
| Blockchain | Base Mainnet (EVM) |
| Smart Contract | Solidity 0.8.20 |
| Wallet | ethers.js v5 |
| Cloud DB | Supabase (PostgreSQL) |
| Hosting | Netlify |

## 🚀 How to Run

Just open `eceto_farm_base.html` in any browser. No build step needed.

To connect wallet and save scores onchain, you need:
1. MetaMask or Coinbase Wallet installed
2. Base Mainnet added to your wallet
3. A small amount of ETH on Base for gas (a few cents)

## 📁 Files

```
eceto_farm_base.html   — Full game (single file, self-contained)
FarmLeaderboard.sol    — Solidity smart contract
README.md              — This file
```

## 🌐 Live Demo

[Play Eceto's Farm →](https://eceto-farm.vercel.app)

---

*Built with ❤️ using Claude AI + Base + Supabase*
