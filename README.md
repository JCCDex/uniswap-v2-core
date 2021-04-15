# Uniswap V2

[![Actions Status](https://github.com/Uniswap/uniswap-v2-core/workflows/CI/badge.svg)](https://github.com/Uniswap/uniswap-v2-core/actions)
[![Version](https://img.shields.io/npm/v/@uniswap/v2-core)](https://www.npmjs.com/package/@uniswap/v2-core)

In-depth documentation on Uniswap V2 is available at [uniswap.org](https://uniswap.org/docs).

The built contract artifacts can be browsed via [unpkg.com](https://unpkg.com/browse/@uniswap/v2-core@latest/).

# Local Development

The following assumes the use of `node@>=10`.

## Install Dependencies

`yarn`

## Compile Contracts

`yarn compile`

## Run Tests

`yarn test`

## 发布

```bash
jcc_moac_tool --config test --deploy build/UniswapV2Factory.json --parameters '"地址"' --gas_limit 3800000
```

测试网络地址: 0x9e770b446d0af9d5e9f6e164de09e17edb459121

```bash
jcc_moac_tool --config ~/.jcc_moac_tool/config.venus.test.json --deploy build/UniswapV2Router02.json --parameters '"0x9e770b446d0af9d5e9f6e164de09e17edb459121","0x4e00ca2b4f66d22219a2d98af146710fad840f33"' --gas_limit 3800000
```

测试网络地址: 0xa02265536ad2c18eb55581f57034704d5ccd5df5

JCC token : 0x48b106f4bf30f9ef83557141341c060e6d954e19
TPT token : 0xe592303d955ca9c515a7d62f374cf46cbeb42dfb
WMOAC token: 0x4e00ca2b4f66d22219a2d98af146710fad840f33

测试通证发放地址： 0x7fDDc0121CFfDB072a2cD9962dbf6bF151f7a7BC
