//SPDX-License-Identifier:MIT
pragma solidity ^0.8.10;

contract AnimalFarm{

    //functions

    uint numberofAnimals;
    string public Animalname;
    string public Animalsound;
    int public Animalversion;

    function setname(string memory _value) public {
        Animalname = _value;
    }
    function setsound(string memory _value2) public {
        Animalsound = _value2;
    }
    function settype(int userInput) public {
        Animalversion = userInput;
    }

    //Name of Farms
    string public constant FARM_NAME = "Farmville";

    //structure
    struct Animals{
        string model;
        string sound;
        int version;
    }

    Animals[] public machine;

    function Animalsdeploy() public{
        machine.push(Animals(Animalname, Animalsound, Animalversion));
        numberofAnimals +=1;
    }
}