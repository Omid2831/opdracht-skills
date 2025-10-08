document.addEventListener('DOMContentLoaded', function(){
    // define the data 
    const deckInner = document.getElementById('deckInner');
    const deckFront = document.getElementById('deckFront');

    //finding the name of the adult image from the baby image name 
    function adultName(baby){
        return baby.replace('_baby','_adult');
    }
})