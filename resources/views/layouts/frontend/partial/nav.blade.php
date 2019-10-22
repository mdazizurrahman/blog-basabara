              <div class="tm-blue-bg tm-left-column">                        
                  <div class="tm-logo-div text-xs-center">
                      <img src="img/tm-neaty-logo.png" alt="Logo">
                      <h1 class="tm-site-name">All Category</h1>
                    </div>
                  <nav class="tm-main-nav">
                      <ul class="tm-main-nav-ul">
                        @foreach($categories as $category)
                          <li class="tm-nav-item">
                              <a href="{{ route ('category.posts',$category->slug) }}" class="tm-nav-item-link">{{$category->name}} ({{$category->posts->count() }})</a>
                          </li>
                          @endforeach
                      </ul>
                  </nav> 
                </div>
              



             