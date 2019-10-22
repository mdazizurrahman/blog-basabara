@extends('layouts.admin.app')

@section('title','Dasboard')

@push('css')

@endpush

@section('content')
    <div class="container-fluid">
        <div class="block-header">
            <h2>DASHBOARD</h2>
        </div>

        <!-- Widgets -->
        <div class="row clearfix">
         <a href="{{route('admin.category.index')}}">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="info-box bg-pink hover-expand-effect">
                    <div class="icon">
                        <i class="material-icons">playlist_add_check</i>
                    </div>
                    <div class="content">
                            <div class="text">Category</div>
                        
                        <div class="number count-to" data-from="0" data-to="125" data-speed="15" data-fresh-interval="20">{{ $category->count() }}</div>
                    </div>
                </div>
            </div>
            </a>
            <a  href="{{route('admin.tag.index')}}">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="info-box bg-cyan hover-expand-effect">
                    <div class="icon">
                        <i class="material-icons">apps</i>
                    </div>
                    <div class="content">
                            <div class="text">Tag</div>
                        <div class="number count-to" data-from="0" data-to="257" data-speed="1000" data-fresh-interval="20">{{ $tag->count() }}</div>
                    </div>
                    </a>
                </div>
            </div>
            <a href="{{route('admin.post.index')}}">
             <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="info-box bg-light-green hover-expand-effect">
                    <div class="icon">
                        <i class="material-icons">library_books</i>
                    </div>
                    <div class="content">
                        <div class="text">Posts</div>
                        <div class="number count-to" data-from="0" data-to="243" data-speed="1000" data-fresh-interval="20">{{ $post->count() }}</div>
                    </div>
                </div>
            </div>
            </a>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="info-box bg-orange hover-expand-effect">
                    <div class="icon">
                        <i class="material-icons">person</i>
                    </div>
                    <div class="content">
                        <div class="text">User</div>
                        <div class="number count-to" data-from="0" data-to="1225" data-speed="1000" data-fresh-interval="20">{{ $user->count() }}</div>
                    </div>
                </div>
            </div>
        </div>
        <!-- #END# Widgets -->
        
            <!-- #END# Browser Usage -->
        </div>
    </div>
@endsection
@push('js')

@endpush
