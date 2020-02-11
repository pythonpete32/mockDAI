pragma solidity ^0.5.16;

contract mockDAI {
    // state
    address public owner;
    address public allocationStrategy;
    address public code;


    // constructor
    constructor() public {
        owner = 0xB85141AF6E497a508e60763A68560f2f710F83b2;
        allocationStrategy = 0xec458c824E645CC8B03a4eF3d3e364c7AE9F9521;
        code = 0xBe19dBee25F447133d0FA3cA05b88D8Ff2a9CB8f;
    }


    // functions

    /**
     * @notice Get current owner
     */
    function getOwner() external view returns (address) {
        return owner;
    }

    /**
     * @notice Get current owner
     */
    function getAllocationStrategy() external view returns (address) {
        return allocationStrategy;
    }

    /**
     * @notice Get current owner
     */
    function getCode() external view returns (address) {
        return code;
    }

    /**
     * @notice Transfers ownership of the contract to a new account (`newOwner`).
     */
    function transferOwnership(address newOwner) external {
        owner = newOwner;
    }

    /**
    * @notice Get the current allocation strategy
    */
    function getCurrentAllocationStrategy()
        external view returns (address) {
            return allocationStrategy;
        }

    /**
    * @notice Change allocation strategy for the contract instance
    * @param _allocationStrategy Allocation strategy instance
    */
    function changeAllocationStrategy(address _allocationStrategy)
        external {
            allocationStrategy = _allocationStrategy;
        }


    /**
     * @notice Update the rToken logic contract code
     */
    function updateCode(address newCode) external {
        code = newCode;
    }

}