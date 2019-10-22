@extends('layouts.admin.app')

@section('title','Post')

@push('css')
    <!-- JQuery DataTable Css -->
    <link href="{{ asset('admin/plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css') }}" rel="stylesheet">
@endpush

@section('content')
<div class="container-fluid">
<div class="block-header">
    <h2>
        
                <a class="btn btn-info" href="{{route('admin.post.create')}}">
                <i class="material-icons">add</i>
                ADD POST
            </a>
       
    </h2>
</div>

<!-- Exportable Table -->
<div class="row clearfix">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="card">
            <div class="header">
                <h2>
                    ALL POST <span class="badge bg-blue">{{$posts->count()}}</span>
                </h2> 
            </div>
            <div class="body">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                        <thead>
                            <tr>
                                <th>SL</th>
                                <th>Post-Create</th>
                                <th>Title</th>
                                <th>Details</th>
                                <th>Amount</th>
                                <th>Room</th>
                                <th>Status</th>
                                <th>Create At</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>SL</th>
                                <th>Post-Create</th>
                                <th>Title</th>
                                <th>Details</th>
                                <th>Amount</th>
                                <th>Room</th>
                                <th>Status</th>
                                <th>Create At</th>
                                <th>Action</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            @foreach($posts as $key=>$post)
                            <tr>
                                <td>{{$key + 1}}</td>
                                <td>{{$post->user->name}}</td>
                                <td>{{$post->title}}</td>
                                <td>{{str_limit($post->body,20)}}</td>
                                <td>{{$post->amount}}</td>
                                <td>{{$post->room}}</td>
                                <td>
                                @if($post->status == true)
                                <span class="badge bg-blue btn btn-info">Active</span>
                                @else
                                <span class="badge bg-red btn btn-danger">Inactive</span>
                                @endif

                                </td>

                                <td>{{ $post->created_at->diffForHumans() }}</td>
                                <td>
                                    @if($post->status == true)
                                        <button type="button" class="btn btn-success waves-effect"disabled>
                                            <i class="material-icons">done</i>
                                        </button>
                                    @else
                                        <button type="button" class="btn btn-success waves-effect" onclick="approvePost({{$post->id}})">
                                            <i class="material-icons">done</i>
                                        </button> 
                                        <form action="{{ route('admin.post.approvel',$post->id) }}" method="POST" id="approvel-form" style="display: none;">
                                            @csrf
                                            @method('PUT')
                                        </form>
                                        
                                    @endif
                                    <a class="btn btn-info" href="{{route('author.post.show',$post->id)}}"> <i class="material-icons">visibility</i>
                                    </a>
                                    <a class="btn btn-info" href="{{route('author.post.edit',$post->id)}}"> <i class="material-icons">edit</i>
                                    </a>

                                    <button class="btn btn-danger waves-effect" type="button" onclick="deleteCategory({{ $post->id }})">
                                        <i class="material-icons">delete</i>
                                    </button>
                                    <form id="delete-form-{{ $post->id }}" action="{{ route('author.post.destroy',$post->id) }}" method="POST" style="display: none;">
                                        @csrf
                                        @method('DELETE')
                                    </form>
                                </td>
                            </tr>
                           @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- #END# Exportable Table -->
</div>
@endsection

@push('js')
       <!-- Jquery DataTable Plugin Js -->
    <script src="{{ asset('admin/plugins/jquery-datatable/jquery.dataTables.js') }}"></script>
    <script src="{{ asset('admin/plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js') }}"></script>
    <script src="{{ asset('admin/plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js') }}"></script>
    <script src="{{ asset('admin/plugins/jquery-datatable/extensions/export/buttons.flash.min.js') }}"></script>
    <script src="{{ asset('admin/plugins/jquery-datatable/extensions/export/jszip.min.js') }}"></script>
    <script src="{{ asset('admin/plugins/jquery-datatable/extensions/export/pdfmake.min.js') }}"></script>
    <script src="{{ asset('admin/plugins/jquery-datatable/extensions/export/vfs_fonts.js') }}"></script>
    <script src="{{ asset('admin/plugins/jquery-datatable/extensions/export/buttons.html5.min.js') }}"></script>
    <script src="{{ asset('admin/plugins/jquery-datatable/extensions/export/buttons.print.min.js') }}"></script>

    <script src="{{ asset('admin/js/pages/tables/jquery-datatable.js') }}"></script>
      <script src="https://unpkg.com/sweetalert2@7.19.1/dist/sweetalert2.all.js"></script>
    <script type="text/javascript">
        function deleteCategory(id) {
            swal({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!',
                cancelButtonText: 'No, cancel!',
                confirmButtonClass: 'btn btn-success',
                cancelButtonClass: 'btn btn-danger',
                buttonsStyling: false,
                reverseButtons: true
            }).then((result) => {
                if (result.value) {
                    event.preventDefault();
                    document.getElementById('delete-form-'+id).submit();
                } else if (
                    // Read more about handling dismissals
                    result.dismiss === swal.DismissReason.cancel
                ) {
                    swal(
                        'Cancelled',
                        'Your data is safe :)',
                        'error'
                    )
                }
            })
        }


         function approvePost(id) {
            swal({
                title: 'Are you sure?',
                text: "You went to approve this post!",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, Approve This Post!',
                cancelButtonText: 'No, cancel!',
                confirmButtonClass: 'btn btn-success',
                cancelButtonClass: 'btn btn-danger',
                buttonsStyling: false,
                reverseButtons: true
            }).then((result) => {
                if (result.value) {
                    event.preventDefault();
                    document.getElementById('approvel-form').submit();
                } else if (
                    // Read more about handling dismissals
                    result.dismiss === swal.DismissReason.cancel
                ) {
                    swal(
                        'Cancelled',
                        'The Post remain Pendig :)',
                        'info'
                    )
                }
            })
        }
    </script>
@endpush