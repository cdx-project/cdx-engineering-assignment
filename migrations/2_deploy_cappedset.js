var CappedSet = artifacts.require("CappedSet.sol");

module.exports = function(deployer) {
    deployer.deploy(CappedSet, 30)
}