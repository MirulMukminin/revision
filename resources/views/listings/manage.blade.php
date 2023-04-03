@extends('layout')

@section('content')
    <x-cards class="p-10!">
                    <header>
                        <h1
                            class="text-3xl text-center font-bold my-6 uppercase"
                        >
                            Manage Gigs
                        </h1>
                    </header>

                    <table class="w-full table-auto rounded-sm relative">
                        <tbody>
                            @unless ($listings->isEmpty())
                                @foreach ($listings as $listing)
                                    <tr class="grid grid-flow-col gap-4 border-gray-300">
                                        <td
                                            class="col-span-2 border-t border-b border-gray-300 text-lg "
                                        >
                                            <a href="show.html">
                                                {{$listing->title}}
                                            </a>
                                        </td>
                                        <td
                                            class="border-t border-b border-gray-300 text-lg mx-10"
                                        >
                                            <a
                                                href="/listings/{{$listing->id}}/edit"
                                                class="col-span-1 text-blue-400  rounded-xl "
                                                ><i
                                                    class="fa-solid fa-pen-to-square"
                                                ></i>
                                                Edit</a
                                            >
                                        </td>
                                        <td
                                            class="col-span-1 border-t border-b border-gray-300 text-lg relative "
                                        >
                                        <form method= "POST" action="/listings/{{$listing->id}}">
                                            @csrf
                                        @method('DELETE')
                                        <button class="text-red-500 mx-10">
                                            <i class="fa-solid fa-trash"></i>
                                            Delete
                                        </button>
                                        </td>
                                    </tr>
                                
                                    
                                @endforeach
                            @else
                            <tr class="border-gray-300">
                                <td class="px-4 py-8 border-top border-bottom border-grey-300 text-lg">
                                    <p class="text-center">
                                        No listings found.
                                    </p>
                                </td>
                            </tr>
                                
                            @endunless

                            
                        </tbody>
                    </table>
    </x-cards>
@endsection