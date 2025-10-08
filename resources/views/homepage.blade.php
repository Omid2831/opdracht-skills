@extends('layouts.app')

@section('content')
    <div class="flex items-start justify-end p-8">

        <!-- Deck image on the left -->
        <div class="ml-8 hidden lg:flex items-center">
            <img src="{{ asset('assets/backside.png') }}" alt="Deck"
                class="w-48 h-auto transform -translate-y-4 shadow-lg">
        </div>

        <!-- Card grid -->
        <div class="grid grid-cols-2 md:grid-cols-3 gap-6 p-6 rounded-2xl">
            @foreach ($animal as $a)
                <div class="flex justify-center items-center rounded-xl">
                    <img src="{{ asset('assets/animalcards/' . $a->NOTE) }}" alt="Animal {{ $a->Id }}"
                        class="object-fit w-40 h-40 md:w-48 md:h-48 border-4 border-dotted border-white rounded-1">
                </div>
            @endforeach
        </div>
    </div>
@endsection
