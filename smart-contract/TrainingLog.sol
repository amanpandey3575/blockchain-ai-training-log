// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TrainingLog {

    struct Log {
        string modelName;
        string dataset;
        string hyperparameters;
        string accuracy;
        uint timestamp;
    }

    Log[] public logs;

    function addLog(
        string memory _modelName,
        string memory _dataset,
        string memory _hyperparameters,
        string memory _accuracy
    ) public {

        logs.push(Log(
            _modelName,
            _dataset,
            _hyperparameters,
            _accuracy,
            block.timestamp
        ));
    }

    function getLogCount() public view returns (uint) {
        return logs.length;
    }
}
