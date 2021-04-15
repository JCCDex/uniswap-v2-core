pragma solidity =0.5.16;

import './interfaces/IUniswapV2Factory.sol';
import './UniswapV2Pair.sol';

contract JCCTest {
    // event Log(address indexed addr, uint256 indexed value, bytes32 indexed bhash);

    constructor() public {}

    function sortTokens(address tokenA, address tokenB) internal pure returns (address token0, address token1) {
        require(tokenA != tokenB, 'UniswapV2Library: IDENTICAL_ADDRESSES');
        (token0, token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
        require(token0 != address(0), 'UniswapV2Library: ZERO_ADDRESS');
    }

    function pairFor(
        address factory,
        address tokenA,
        address tokenB
    ) public pure returns (address pair, bytes32 _hash) {
        (address token0, address token1) = sortTokens(tokenA, tokenB);
        bytes memory bytecode = type(UniswapV2Pair).creationCode;
        _hash = keccak256(bytecode);
        pair = address(
            uint256(
                keccak256(
                    abi.encodePacked(
                        hex'ff',
                        factory,
                        keccak256(abi.encodePacked(token0, token1)),
                        _hash // init code hash
                    )
                )
            )
        );
    }
}
