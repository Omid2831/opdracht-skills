<div class="relative ml-8 hidden lg:flex flex-col items-center">
    <!-- visual stacked backside cards -->
    <img src="{{ asset('assets/backside.png') }}" alt="Deck"
        class="w-48 h-auto shadow-lg absolute top-0 left-0 transform -rotate-10">
    <img src="{{ asset('assets/backside.png') }}" alt="Deck"
        class="w-48 h-auto shadow-lg absolute top-2 left-4 transform rotate-10">

    <!-- functional deck -->
    <div id="deck" class="relative mt-10 w-[19rem] h-[19rem] perspective-[1000px]">
        <div id="deckInner" class="w-full h-full relative">
            <img id="deckBack" src="{{ asset('assets/backside.png') }}" alt="Deck back"
                class="absolute w-full h-full object-contain rotate-y-0 backface-hidden">
            <img id="deckFront" src="" alt="Deck front"
                class="absolute w-full h-full object-contain rotate-y-180 backface-hidden">
        </div>
    </div>
</div>