angular.module("recipesApp")
.service("httpService", function($http) {
	this.indexRecipes = function () {
		return $http.get("/recipes");
	}
    this.getRecipe = function(id) {
        return $http.get("/recipes/" + id);
    }
    this.recipeFromApiKeyword = function (keyword) {
        return $http.get("/yummly/keyword/" + keyword);
    }
    this.recipeFromApiId = function (id) {
    	return $http.get("yummly/id/" + id);
    }
    this.addRecipe = function (recipe) {
        return $http.post("/recipes", recipe);
    }
    this.getNotes = function (recipeId) {
        return $http.get("/recipes/" + recipeId + "/notes/");
    }
    this.saveNote = function (note, recipeId) {
        return $http.post("/recipes/" + recipeId + "/notes/", note);
    }
    this.editNote = function (note) {
        return $http.put("/recipes/" + note.recipe_id + "/notes/" + note.id, note)
    }
    this.favRecipe = function (recipe) {
        return $http.put("/api/togglefav", recipe);
    }
    this.deleteNote = function (noteId, recipeId) {
        return $http.delete("/recipes/" + recipeId + "/notes/" + noteId)
    }
})