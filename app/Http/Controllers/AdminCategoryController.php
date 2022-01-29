<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use \Cviebrock\EloquentSluggable\Services\SlugService;
use Illuminate\Routing\Redirector;

class AdminCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // if (auth()->guest()) {
        //     abort(403);
        // }

        // Jika Admin-nya selain dwi
        // if (auth()->user()->username !== 'dwi') {
        //     abort(403);
        // }
        // Atau
        // $this->authorize('is_admin');
        
        return view('dashboard.categories.index', [
            "title" => "Post Categories",
            "categories" => Category::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.categories.create', [
            'title' => "Create New Category",
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Validations
        $validatedData = $request->validate([
            'name' => 'required|unique:categories|max:255',
            'slug' => 'required|unique:categories|max:255',
        ]);
        // Store to database
        Category::create($validatedData);
        // Redirect to index
        return redirect('dashboard/categories')->with('success', 'Category created successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(Category $category)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Category $category)
    {
        return view('dashboard.categories.edit', [
            'title' => "Edit Category",
            'category' => $category
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Category $category)
    {
        if ($request->name == $category->name) {
            $is_name = '';
        } else {
            $is_name = 'unique:categories';
        }
        if ($request->slug == $category->slug) {
            $is_slug = '';
        } else {
            $is_slug = 'unique:categories';
        }

        $validateData = $request->validate([
            "name" => "required|max:255|" . $is_name,
            "slug" => "required|max:255|" . $is_slug,
        ]);

        Category::where("id", $category->id)
            ->update($validateData);
        return redirect('dashboard/categories')->with('success', 'Category updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category)
    {
        //
    }

    public function checkSlug(Request $request)
    {
        $slug = SlugService::createSlug(Category::class, 'slug', $request->name);
        return response()->json(['slug' => $slug]);
    }
}