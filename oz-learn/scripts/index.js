async function main(callback) {
  try {
    const accounts = await web3.eth.getAccounts();
    const Box = artifacts.require("Box");
    const boxContract = await Box.deployed();

    let value = await boxContract.retrieve();
    console.log("Value is", value);

    console.log("Changing value");

    await boxContract.store(56)
    value = await boxContract.retrieve();
    console.log("Value is", value);

    callback(0);
  } catch(e) {
    console.log(e);
    callback(1);
  }
}

module.exports = main;
