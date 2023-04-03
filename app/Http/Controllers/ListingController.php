<?php

namespace App\Http\Controllers;

use App\Models\Listing;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use App\Models\User;

class ListingController extends Controller
{
    public function index()
    {
        // dd(request('tag'));
        return view('listings.index', [
            'listings' => Listing::latest()->filter(request(['tag', 'search']))->paginate(6)
        ]);
    }

    public function show(Listing $listing)
    {

        return view(
            'listings.show',
            [
                'listing' => $listing
            ]
        );
    }

    public function create()
    {
        return view('listings.create');
    }

    public function store(Request $request)
    {
        //dd($request->all());
        // $formFields = $request->validate([
        //     'title' => 'required',
        //     'company' => ['required', Rule::unique('listings', 'company')],
        //     'location' => 'required',
        //     'websites' => 'required',
        //     'email' => ['required', 'email'],
        //     'tags' => 'required',
        //     'description' => 'required',

        // ]);
        $listing = $request->all();
        $listing['user_id'] = auth()->id();
        //dd($listing['user_id']);
        Listing::create($listing);
        return redirect('/')->with('success-message', 'Listing created successfully!');
    }

    public function edit(Listing $listing)
    {
        return view('listings.edit', ['listing' => $listing]);
    }

    public function update(Request $request, Listing $listing)
    {
        $listing->update($request->all());
        return back()->with('success-message', 'Listing updated successfully!');
    }

    public function destroy(Listing $listing)
    {
        $listing->delete();
        return redirect('/')->with('success-message', 'Listing deleted successfully!');
    }

    public function manage()
    {
        return view('listings.manage', ['listings' => auth()->user()->listings]);
    }
}
