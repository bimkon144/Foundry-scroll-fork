// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import {Script, console2} from "forge-std/Script.sol";
import {ARB} from "../src/erc-20-tokens/ARB.sol";
import {DAI} from "../src/erc-20-tokens/DAI.sol";
import {GRT} from "../src/erc-20-tokens/GRT.sol";
import {LINK} from "../src/erc-20-tokens/LINK.sol";
import {Maker} from "../src/erc-20-tokens/maker.sol";
import {METALAMP} from "../src/erc-20-tokens/METALAMP.sol";
import {TRX} from "../src/erc-20-tokens/TRX.sol";
import {TUSD} from "../src/erc-20-tokens/TUSD.sol";
import {USDC} from "../src/erc-20-tokens/USDC.sol";

import {console} from "forge-std/console.sol";

contract Deploy is Script {

    function run() public {
        string[] memory tokens = new string[](9);
        tokens[0] = "ARB";
        tokens[1] = "DAI";
        tokens[2] = "GRT";
        tokens[3] = "LINK";
        tokens[4] = "maker";
        tokens[5] = "METALAMP";
        tokens[6] = "TRX";
        tokens[7] = "TUSD";
        tokens[8] = "USDC";
        
        address[] memory addresses = new address[](9);


        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(deployerPrivateKey);

        ARB arb = new ARB(0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266);
        DAI dai = new DAI(0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266);
        GRT grt = new GRT(0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266);
        LINK link = new LINK(0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266);
        Maker makerToken = new Maker(0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266);
        METALAMP metalamp = new METALAMP(0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266);
        TRX trx = new TRX(0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266);
        TUSD tusd = new TUSD(0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266);
        USDC usdc = new USDC(0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266);


        addresses[0] = address(arb);
        addresses[1] = address(dai);
        addresses[2] = address(grt);
        addresses[3] = address(link);
        addresses[4] = address(makerToken);
        addresses[5] = address(metalamp);
        addresses[6] = address(trx);
        addresses[7] = address(tusd);
        addresses[8] = address(usdc);

        for (uint256 i = 0; i < addresses.length; i++) {
            console.log(tokens[i], addresses[i]);
        }

        vm.stopBroadcast();
    }
}
