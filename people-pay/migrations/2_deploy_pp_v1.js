const PPV1 = artifacts.require("PPV1");

module.exports = async function(deployer) {
  await deployer.deploy(PPV1);
}
