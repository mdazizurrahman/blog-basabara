@extends('layouts.admin.app')

@section('title','Post')

@push('css')
    <!-- JQuery DataTable Css -->
 <link href="{{asset('admin/plugins/bootstrap-select/css/bootstrap-select.css')}}" rel="stylesheet" />
@endpush

@section('content')
        <div class="container-fluid">
            <a class="btn btn-danger waves-effect" href="{{route('author.post.index')}}">Back</a>
            @if($post->status == true)
                <button type="button" class="btn btn-success pull-right "disabled>
                    <i class="material-icons">done</i>
                    <span>Approved</span>
                </button>
            @else
                <button type="button" class="btn btn-success pull-right">
                    <i class="material-icons">done</i>
                    <span>Pending</span>
                </button> 
                
            @endif
            <br><br>
            <div class="row clearfix">
                <div class="col-lg-8 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                {{$post->title}}
                                <small>Post By: <strong><a href="">{{ $post->user->name}}</a></strong> on 
                                    {{ $post->created_at->toFormattedDateString() }}
                                </small>
                            </h2>
                        </div>
                        <div class="body">
                            {!! $post->body !!}
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                    <div class="card ">
                        <div class="header bg-blue">
                            <h2 class="">Categrories</h2>
                        </div>
                        <div class="body">
                            @foreach($post->categories as $category)
                            <span class="label bg-cyan">{{$category->name}}</span>
                            @endforeach
                        </div>
                    </div>
                    <div class="card ">
                        <div class="header bg-green">
                            <h2 class=""> Tags</h2>
                        </div>
                        <div class="body">
                            @foreach($post->tags as $tag)
                                <span class="label bg-green">{{$tag->name}}</span>
                            @endforeach
                        </div>
                    </div>
                    <div class="card ">
                        <div class="header bg-amber">
                            <h2 class="">Feature Image</h2>
                        </div>
                        <div class="body">
                            <img class="img-responsive img-thumbnail" src="{{ asset('storage/uploads/post/'.$post->image) }}" >
                        </div>
                    </div>
                </div>
            </div>
        </div>
@endsection

@push('js')
       <!-- Jquery DataTable Plugin Js -->
   
<script src="{{asset('admin/plugins/bootstrap-select/js/bootstrap-select.js')}}"></script>
  <script src="{{ asset('admin/plugins/tinymce/tinymce.js') }}"></script>
    <script>
        $(function () {
            //TinyMCE
            tinymce.init({
                selector: "textarea#tinymce",
                theme: "modern",
                height: 300,
                plugins: [
                    'advlist autolink lists link image charmap print preview hr anchor pagebreak',
                    'searchreplace wordcount visualblocks visualchars code fullscreen',
                    'insertdatetime media nonbreaking save table contextmenu directionality',
                    'emoticons template paste textcolor colorpicker textpattern imagetools'
                ],
                toolbar1: 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
                toolbar2: 'print preview media | forecolor backcolor emoticons',
                image_advtab: true
            });
            tinymce.suffix = ".min";
            tinyMCE.baseURL = '{{ asset('admin/plugins/tinymce') }}';
        });
    </script>
@endpush