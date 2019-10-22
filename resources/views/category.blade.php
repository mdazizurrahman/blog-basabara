@extends('layouts.frontend.app')

@section('title','Category')
@section('content')
<div class="container">
        <div class="row">
          <div class="tm-left-right-container">
              <!-- Left column: logo and menu -->
            @include('layouts.frontend.partial.nav')
                    <!-- Right column: content -->
                    <div class="tm-right-column">
                        <div class="tm-content-div">
                            <!-- Welcome section -->
                            @if($category->posts->count() > 0)
                            @foreach($category->posts as $post)
                            <div class="container">
                                <div class="row">
                                <header>
                                    <h2 class="tm-blue-text tm-welcome-title tm-margin-b-45">{{$post->title}}</h2>
                                </header>
                                    <div class="col-md-3">
                                        <div class="postimage">
                                            <img class="img-responsive img-thumbnail" src="{{ asset('storage/uploads/post/'.$post->image) }}" width="200" height="200">
                                        </div>
                                    </div>
                                    <div class="col-md-9">  
                                        <section id="welcome" class="tm-section">
                                            <div class="room">Room: {{$post->room}}</div>
                                            <div class="rate">tk {{$post->amount}}</div>
                                            <p>{!! $post->body !!}</p>
                                        </section>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                            @else
                                  <header>
                                    <h2 class="tm-blue-text tm-welcome-title tm-margin-b-45">Sorry, no post found</h2>
                                </header>
                            @endif
                            @include('layouts.frontend.partial.footer')
                        </div>  
                        
                    </div> <!-- Right column: content -->
                </div>
            </div> <!-- row -->
    </div>
@endsection
