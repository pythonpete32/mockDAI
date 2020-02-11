var mockDAI = artifacts.require("mockDAI");

module.exports = function(deployer) {
  // deployment steps
  deployer.deploy(mockDAI);
};
