async function showEmployees(contract) {
  const currentEmployees = await contract.showEmployees()
  console.log("currentEmployees---->", currentEmployees)
}

async function main(callback) {
  try {
    const accounts = await web3.eth.getAccounts()
    const PPV1 = await (artifacts.require("PPV1")).deployed()

    const owner = await PPV1.owner()
    console.log("_owner ---->", owner.toString())

    await showEmployees(PPV1)

    const emp1 = accounts[1]
    const emp2 = accounts[2]
    await PPV1.addEmployee(emp1, 20)
    await PPV1.addEmployee(emp2, 18)

    await showEmployees(PPV1)

    callback(0)
  } catch(e) {
    console.log(e)
    callback(1)
  }
}

module.exports = main;
