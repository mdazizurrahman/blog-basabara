<aside id="leftsidebar" class="sidebar">
            <!-- User Info -->
            <div class="user-info">
                <div class="image">
                    <img src="images/user.png" width="48" height="48" alt="User" />
                </div>
                <div class="info-container">
                    <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{Auth::user()->name}}</div>
                    <div class="email">{{Auth::user()->email}}</div>

                </div>
            </div>
            <!-- #User Info -->
            <!-- Menu -->
            <div class="menu">
                <ul class="list">
                    <li class="header">DASHBOARD</li>
                @if(Request::is('author*'))
                     <li class="{{Request::is('author/dashboard') ? 'active': ''}}">
                        <a href="{{route('author.dashboard')}}">
                            <i class="material-icons">home</i>
                            <span>Home</span>
                        </a>
                    </li>
                    <li class="{{Request::is('author/post*') ? 'active': ''}}">
                        <a href="{{route('author.post.index')}}">
                            <i class="material-icons">library_books</i>
                            <span>Posts</span>
                        </a>
                    </li>
                @endif
                  @if(Request::is('admin*'))
                     <li class="{{Request::is('admin/dashboard') ? 'active': ''}}">
                        <a href="{{route('admin.dashboard')}}">
                            <i class="material-icons">home</i>
                            <span>Home</span>
                        </a>
                    </li>
                    <li class="{{Request::is('admin/tag*') ? 'active': ''}}">
                        <a href="{{route('admin.tag.index')}}">
                            <i class="material-icons">apps</i>
                            <span>Tags</span>
                        </a>
                    </li>
                    <li class="{{Request::is('admin/category*') ? 'active': ''}}">
                        <a href="{{route('admin.category.index')}}">
                            <i class="material-icons">label</i>
                            <span>Category</span>
                        </a>
                    </li>
                    <li class="{{Request::is('admin/post*') ? 'active': ''}}">
                        <a href="{{route('admin.post.index')}}">
                            <i class="material-icons">library_books</i>
                            <span>Post</span>
                        </a>
                    </li>
                    <li class="{{Request::is('admin/pending/post') ? 'active': ''}}">
                        <a href="{{route('admin.post.pending')}}">
                            <i class="material-icons">library_books</i>
                            <span>Pending Post</span>
                        </a>
                    </li>
                    <li class="{{Request::is('admin/favorite*') ? 'active': ''}}">
                        <a href="{{route('admin.favorite.index')}}">
                            <i class="material-icons">favorite</i>
                            <span>Favorite Posts</span>
                        </a>
                    </li>
                    <li class="{{Request::is('admin/subscriber*') ? 'active': ''}}">
                        <a href="{{route('admin.subscriber.index')}}">
                            <i class="material-icons">subscriptions</i>
                            <span>Subscriber</span>
                        </a>
                    </li>
                    <li class="{{Request::is('admin/user*') ? 'active': ''}}">
                        <a href="{{route('admin.user.index')}}">
                            <i class="material-icons">person</i>
                            <span>User</span>
                        </a>
                    </li>
                @endif
                
                    <li class="btn btn dange">
                        <a class="btn btn-danger" style="width:250px;" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                        <i class="material-icons">input</i>
                        <span>Logout</span>
                        </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                            </form>
                    </li>
                    
                    @if (Auth::check() && Auth::user()->role->id == 2)
                    <li class="{{Request::is('author/settings*') ? 'active': ''}}">
                        <a href="{{route('author.settings')}}">
                            <i class="material-icons">settings</i>
                            <span>Settings</span>
                        </a>
                    </li>
                    @endif
                 </ul>
            </div>

            <!-- #Menu -->
            <!-- Footer -->
            <div class="legal">
                <div class="copyright">
                    &copy; 2018 - 2019 <a href="javascript:void(0);">Develop by Md Azizur Rahman</a>.
                </div>
            </div>
            <!-- #Footer -->
        </aside>