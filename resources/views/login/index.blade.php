@extends('layout.main')

@section('container')
<div class="row justify-content-center">
    <div class="col-lg-4">
        @if (session('success'))
            <div class="alert alert-warning alert-dismissible fade show" role="alert">
                <strong>{{ session('success') }}</strong>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        @endif
        <main class="form-signin">
            <form>
              <h1 class="h3 mb-3 fw-normal text-center">Please Login!</h1>
        
              <div class="form-floating">
                <input
                  type="email"
                  class="form-control"
                  id="floatingInput"
                  placeholder="name@example.com"
                />
                <label for="floatingInput">Email address</label>
              </div>
              <div class="form-floating">
                <input
                  type="password"
                  class="form-control"
                  id="floatingPassword"
                  placeholder="Password"
                />
                <label for="floatingPassword">Password</label>
              </div>
        
              <button class="w-100 btn btn-lg btn-primary" type="submit">
                Sign in
              </button>
            </form>
            <small class="d-block text-end mt-2">Not registered?. <a href="/register">Registration now</a></small>
        </main>
    </div>
</div>
@endsection