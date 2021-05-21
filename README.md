<a href="https://tagion.org"><img alt="tagion logo" src="https://github.com/tagion/resources/raw/master/branding/logomark.svg?sanitize=true" alt="tagion.org" height="60"></a>

# Tagion AlphaFour Release

## Release Notes

This release includes the updated `tagionwave` and `tagionwallet` binaries with CLI. The purpose of this release was to improve stability and network performance through the new static graph implementation.

- Rewritten Tagion Hashgraph consensus implementation:
    - Static graph implementation (significant performance and stability gains);
    - Improved Epoch sorting;
    - Improved clean-up;
    - Added event caching;
- Updated libraries to support major changes:
    - HiBON
    - HiRPC
    - Network interface library
- Updated tools and utils to support major changes:
    - `hibonutil`
    - `dartutil`
    - `tagionutil`
    - `tagionwallet`


## Getting Started

Here we show how to run the local network (multiple nodes on a single machine).

### Run with Docker

To start the local network:

```bash
docker rm alpha4 &> /dev/null && docker run --name=alpha4 -ti tagion/tagion_alphafour tagionwave --loops 0
```

To create a wallet and do some transfers in the network, attach to a running container:

```bash
docker exec -ti alpha4 bash
```

The `tagionwallet` is already in PATH, feel free to create a wallet.

```bash
tagionwallet -g # Opens an interactive mode
```

To better understand the `tagionwallet`, read the [AlphaOne Guide](https://github.com/tagion/alpha_one#about-tagion-wallet-cli).

# Repository

## Maintainers

- [@vladpazych](https://github.com/vladpazych)

## Questions

For questions and support, please use the [official forum](https://tagion.org/c/development/6) or [Telegram chat](https://t.me/tagionChat). The issue list of this repo is exclusively for bug reports.

## Issues

Please use GitHub to [report a bug](https://github.com/tagion/alpha_one/issues/new?assignees=cbleser%2C+alexSushko&labels=bug&template=bug_report.md&title=) or [request a feature](https://github.com/tagion/alpha_one/issues/new?assignees=alexSushko%2C+cbleser&labels=enhancement&template=feature_request.md&title=).
