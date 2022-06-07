    const smartcontract = artifacts.require("medichain");
            module.exports = async function (deployer) {
                await deployer.deploy(smartcontract);
            };