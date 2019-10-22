                            <footer>
                                <p class="tm-copyright-p">Copyright &copy; <span class="tm-current-year">2019</span> Your Company 
                                
                                | Develop By: Md Azizur Rahman</p>
                                <br>
                                <div class="suscribe">
                                    <form action="{{route('subscriber.store')}}"  class="form-inline" method="post">
                                      @csrf
                                      <div class="form-group mx-sm-3 mb-2">
                                        <label for="email" class="sr-only">Email</label>
                                        <input name="email" type="email" class="form-control" id="email" placeholder="Email">
                                      </div>
                                      <button type="submit" class="btn btn-primary mb-2">Subscribe</button>
                                    </form>
                                </div>
                            </footer>