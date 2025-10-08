@extends('layouts.app')



@section('content')
    <div class="bg-gray-600 border-4 w-f h-45">

        <!-- Table here -->
        @foreach ($animal as $a)
            <div class="flex flex-col">
                <a>
                    <img src="./assets/animalcards/{{ $a->NOTE }}" alt="logo {{$a->Id}}">
                </a>
            </div>
        @endforeach
    </div>
    
@endsection
`