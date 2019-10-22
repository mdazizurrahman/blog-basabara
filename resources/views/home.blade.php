@extends('layouts.frontend.app')

@section('title','Blog')
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
                            @foreach($posts as $post)
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
                                            @if(empty($post->room))
                                            @else
                                            <div class="room">Room: {{$post->room}}</div>
                                            @endif

                                            <div class="rate">tk {{$post->amount}}</div>
                                            <p>{!! $post->body !!}</p>
                                            <ul style="display: inline-block;" class="post-footer">
                                                <li style="display: inline-block; ">
                                                    @guest
                                             <a href="javascript:void(0);" onclick="toastr.info('To add favorite list. You need to login first.','Info',{
                                                    closeButton: true,
                                                    progressBar: true,
                                                })"><i class="ion-heart"></i>{{ $post->favorate_to_user->count() }}</a>
                                                    @else
                                                    <a href="javascript:void(0);" onclick="document.getElementById('favorite-form-{{ $post->id }}').submit();"
                                                   class="{{ !Auth::user()->favorate_post->where('pivot.post_id',$post->id)->count()  == 0 ? 'favorate_postsss' : ''}}"><i class="ion-heart"></i>{{ $post->favorate_to_user->count() }}</a>

                                                <form id="favorite-form-{{ $post->id }}" method="POST" action="{{ route('post.favorate',$post->id) }}" style="display: none;">
                                                    @endguest
                                            

                                                </li>
                                                <li style="display: inline-block; "><a   href="#"><i class="ion-chatbubble"></i>6</a></li>
                                                <img width="40px" class="img-responsive img-thumbnail" src="{{ asset('storage/uploads/author/profile/'.$post->user->image) }}" >
                                            </ul>

                                    </div>
                                </div>
                            </div>
                            @endforeach
                            @include('layouts.frontend.partial.footer')
                        </div>  
                        
                    </div> <!-- Right column: content -->
                </div>
            </div> <!-- row -->
    </div>
@endsection
