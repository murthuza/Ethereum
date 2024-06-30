
# DrivingLicence Smart Contract

## Introduction

This project implements a smart contract using Solidity that demonstrates the usage of `require()`, `assert()`, and `revert()` statements. These statements are essential in Solidity for error handling and ensuring the proper functioning of the contract.

## Smart Contract Details

The `DrivingLicence` contract is designed to manage and validate the age of a driver for issuing a driving license. The contract ensures that the driver's age falls within the acceptable range of 18 to 65 years.

### Contract Functions

1. **register(uint _age)**

   This function registers the age of the driver.
   
   ```solidity
   function register(uint _age) public {
       driverage = _age;
   }
   ```

2. **checkAssert()**

   This function uses the `assert()` statement to verify that the driver's age is between 18 and 65 years. If the condition is not met, the transaction is reverted.
   
   ```solidity
   function checkAssert() public view {
       assert(driverage >= 18 && driverage <= 65);
   }
   ```

3. **checkRequire()**

   This function uses the `require()` statement to ensure that the driver's age is within the acceptable range. If the condition is not met, the transaction is reverted with an appropriate error message.
   
   ```solidity
   function checkRequire() public view {
       require(driverage >= 18, "You must be at least 18 years to Drive Vehicles");
       require(driverage <= 65, "You must be under 65 years old to Drive Vehicles");
   }
   ```

4. **checkRevert()**

   This function uses the `revert()` statement to check if the driver's age is within the acceptable range. If the condition is not met, the transaction is reverted with an appropriate error message.
   
   ```solidity
   function checkRevert() public view {
       if (driverage < 18 || driverage > 65) {
           revert("You must be between 18 and 65 years old to Drive Vehicles");
       }
   }
   ```

## Usage

1. **Deploy the Contract**

   Deploy the `DrivingLicence` contract to your preferred Ethereum network.

2. **Register Driver Age**

   Use the `register` function to set the driver's age.

3. **Check Driver Age**

   Use the `checkAssert`, `checkRequire`, and `checkRevert` functions to validate the driver's age. Each function uses a different Solidity statement for error handling.

## Summary

This project demonstrates the use of `assert()`, `require()`, and `revert()` statements in Solidity for error handling and input validation. The `DrivingLicence` contract ensures that a driver's age is between 18 and 65 years, providing a practical example of how these statements can be used in smart contract development.
