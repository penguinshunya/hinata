<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ApiController extends Controller
{
    public function getAllStudents()
    {
        return response()->json(["students" => ["student1", "student2", "student3"]]);
    }
}
