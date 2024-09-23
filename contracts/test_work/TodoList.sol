// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract TodoList {

    struct Todo {
        string name;
        bool isComplated;
    }

    Todo[] private todos;


    function createTodo(string memory _name,bool _isComplated) public  {
        require(bytes(_name).length > 0,"name cannot be empty");
        todos.push(
            Todo({
                name:_name,
                isComplated:_isComplated
            })
        );
    }

    function moditfyV1(uint256 _index,string memory _name) public  {
        require(_index<todos.length,"index out of range");
        todos[_index].name=_name;
        
    }


    function moditfyV2(uint256 _index,string memory _name) external  {
        require(_index<todos.length,"index out of range");
        Todo storage todo=todos[_index];
        todo.name=_name; 
    }
    

      function getTodo(uint256 _index) public view  returns (Todo memory) {
        require(_index<todos.length,"index out of range");
        return todos[_index];
    }
}