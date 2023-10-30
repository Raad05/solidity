// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract RecipeContract {
    // recipe structure
    struct Recipe {
        string name;
        string description;
        string ingredients;
        uint minFund;
        uint fundRaised;
    }

    // mapping every recipe based on the owner
    mapping (address => Recipe[]) recipeByOwner;

    // all recipes
    Recipe[] recipes;

    // create a recipe
    function createRecipe(
        string memory _name, 
        string memory _description, 
        string memory _ingredients,
        uint _minFund 
        ) public {
        Recipe memory newRecipe = Recipe(_name, _description, _ingredients, _minFund, 0);
        recipeByOwner[msg.sender].push(newRecipe);
        recipes.push(newRecipe);
    }

    // get all recipes
    function getRecipes() public view returns (Recipe[] memory) {
        return recipes;
    }

    // get recipes made by the owner
    function getRecipesByOwner() public view returns(Recipe[] memory) {
        return recipeByOwner[msg.sender];
    }
}