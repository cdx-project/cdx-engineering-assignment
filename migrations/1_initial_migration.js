var Migrations = artifacts.require("./Migrations.sol");
var CappedSet = artifacts.require("./CappedSet.sol");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(CappedSet, 30)
};
