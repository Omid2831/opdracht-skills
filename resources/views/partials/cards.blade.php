@extends('layouts.app')

@section('content')
    <div class="max-w-7xl mx-auto py-8">
        <div class="grid grid-cols-12 gap-6 items-start">
            
            <div class="col-span-5 flex items-center justify-center">
                <div class="w-72 h-96 relative">
                    <img src="{{ asset('assets/backside.png') }}" alt="backside"
                        class=" object-cover rounded-lg shadow-2xl">
                </div>
            </div>

            <div id="deck" class="grid grid-cols-3 gap-6">
                    @php

                        if (!isset($cards)) {
                            $cards = [
                                'cat_adult.png',
                                'cow_adult.png',
                                'dog_adult.png',
                                'duck_adult.png',
                                'elephant_adult.png',
                                'goat_adult.png',
                                'horse_adult.png',
                                'pig_adult.png',
                                'seal_adult.png',
                            ];
                        }
                    @endphp

                    @foreach ($cards as $card)
                        <div class="flex justify-center items-center">
                            <img src="{{ asset('assets/animalcards/' . $card) }}" alt="{{ $card }}"
                                class="w-40 h-40 border-4 border-dotted border-white rounded">
                        </div>
                    @endforeach
                </div>

            </div>
        </div>
@endsection
