pragma solidity 0.4.24;
pragma experimental ABIEncoderV2;
pragma experimental "v0.5.0";


contract CappedSet {
    uint256 public numElements;

    constructor(
        uint256 _numElements
    ) public {
        numElements = _numElements;
    }

    function insert(
        address addr, 
        uint256 value
    )
        public
        returns (address newLowestAddress, uint256 newLowestValue) 
    {
        
    }

    function update(
        address addr,
        uint256 newVal
    ) 
        public
        returns (address newLowestAddress, uint256 newLowestValue)
    {
        
    }

    function remove(address addr) 
        public 
        returns (address newLowestAddress, uint256 newLowestvalue) 
    {
        
    }
}
