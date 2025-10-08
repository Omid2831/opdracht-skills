@extends('layouts.app')



@section('content')
    <div class=" grid grid-cols-1 md:grid-cols-3">

        <!-- Table here -->
        @foreach ($animal as $a)
            <div class="flex flex-col">
                <a>
                    <img src="./assets/animalcards/{{ $a->NOTE }}" alt="logo {{$a->Id}}" class="w-40 h-40 m-2 rounded-lg border-dotted border-4">
                </a>
            </div>
        @endforeach
    </div>
    
@endsection