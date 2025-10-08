<?php

namespace App\Http\Controllers;

use App\Models\AnimalModel;
use Illuminate\Http\Request;

class AnimalController extends Controller
{
    private $animalModel;
    public function __construct()
    {
        $this->animalModel = new AnimalModel();
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $animal = $this->animalModel::getAllAnimals();

        return view('homepage', [
            't' => 'Website data are going to be here ',
            'Messages' => null,
            'animal' => $animal
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(AnimalModel $animalModel)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(AnimalModel $animalModel)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, AnimalModel $animalModel)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(AnimalModel $animalModel)
    {
        //
    }
}
