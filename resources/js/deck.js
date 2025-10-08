document.addEventListener('DOMContentLoaded', function(){
    // define the data 
    const deckInner = document.getElementById('deckInner');
    const deckFront = document.getElementById('deckFront');

    //finding the name of the adult image from the baby image name
    function adultName(baby){
        return baby.replace('_baby','_adult');
    }

    // make the card flip when clicking on the baby image 
    document.body.addEventListener('click', function(event){
        // handle clicks on baby cards
        const el = event.target;

        // if the clicked element is a baby card
        if (el.classList.contains('baby-card')) {
            const file = (el.src || '').split('/').pop();

            // get the adult image name from the baby selected
            const adult =  adultName(file);

            // replacing the front image with the adult image
            if (el.src) deckFront.src = el.src.replace(file, adult);
            else deckFront.src = '/assets/animalcards/' + adult;

            deckInner.classList.add('flipped');
            setTimeout(() => deckInner.classList.remove('flipped'), 2000);
        }
    })

})