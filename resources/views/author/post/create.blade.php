@extends('layouts.admin.app')

@section('title','Post')

@push('css')
    <!-- JQuery DataTable Css -->
 <link href="{{asset('admin/plugins/bootstrap-select/css/bootstrap-select.css')}}" rel="stylesheet" />
@endpush

@section('content')
        <div class="container-fluid">
                   <div class="container-fluid">
            <div class="block-header"><a href="{{route('author.post.index')}}"></a></div>
            <!-- Basic Validation -->
            <form action="{{route('author.post.store')}}"  method="POST" enctype="multipart/form-data">
                                @csrf
            <div class="row clearfix">
                <div class="col-lg-8 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>ADD POST</h2>
                        </div>
                        <div class="body">
                            
                                <div class="form-group form-float">
                                    <div class="form-line">
                                        <input value="{{old('title')}}" type="text" class="form-control" name="title" required>
                                        <label class="form-label">Post Title</label>
                                    </div>
                                </div>
                                <div class="form-group form-float">
                                    <div class="form-line">
                                        <input value="{{old('amount')}}" type="text" class="form-control" name="amount" required>
                                        <label class="form-label">Amount</label>
                                    </div>
                                </div>
                                <div class="form-group form-float">
                                    <div class="form-line">
                                        <input value="{{old('room')}}" type="text" class="form-control" name="room" required>
                                        <label class="form-label">Room</label>
                                    </div>
                                </div>
                                    <div class="form-group">
                                        <input  type="file" class="form-control" name="image" required>
                                    </div>
                                

                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                    <div class="card ">
                        <div class="header bg-blue">
                            <h2 class="">Categrories & Tags</h2>
                        </div>
                        <div class="body">
                            
                                <div class="form-group form-float">
                                    <div class="form-line" {{$errors->has('categories') ? 'fucused error' : '' }}>
                                        <select name="categories[]" id="category" class="form-control show-tick" data-live-search="true" multiple>
                                            <label for="category">Category Name</label>
                                            @foreach($categories as $category)
                                            <option value="{{$category->id}}">{{$category->name}}</option>
                                            @endforeach
                                        </select>
                                        
                                    </div>
                                </div>

                                <div class="form-group form-float">
                                    <div class="form-line" {{$errors->has('tags') ? 'fucused error' : '' }}>
                                        <select name="tags[]" id="tag" class="form-control show-tick" data-live-search="true" multiple>
                                            <label for="tag">Tag Name</label>
                                            @foreach($tags as $tag)
                                            <option value="{{$tag->id}}">{{$tag->name}}</option>
                                            @endforeach
                                        </select>
                                        
                                    </div>
                                </div>

                                <a class="btn btn-danger" href="{{route('author.post.index')}}">BACK</a>
                                <button class="btn btn-primary waves-effect" type="submit">SUBMIT</button>

                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>Body</h2>
                        </div>
                        <div class="body">
                              <textarea id="tinymce" name="body">
                                {{old('body')}}
                            </textarea>
                        </div>
                    </div>
                </div>
            </div>
            </form>
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