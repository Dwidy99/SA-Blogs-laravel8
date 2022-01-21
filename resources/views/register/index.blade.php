@extends('layout.main')

@section('container')
<div class="row justify-content-center">
    <div class="col-lg-4">
        <main class="form-registration">
            <form>
              <h1 class="h3 mb-3 fw-normal text-center">Please Login!</h1>
        
              <div class="form-floating">
                <input
                  type="text"
                  name="name"
                  class="form-control rounded-top"
                  id="name"
                  placeholder="Name.."
                />
                <label for="name">Name</label>
              </div>
              <div class="form-floating">
                <input
                  type="text"
                  class="form-control"
                  id="username"
                  placeholder="Username.."
                />
                <label for="username">Username..</label>
              </div>
              <div class="form-floating">
                <input
                  type="text"
                  name="email"
                  class="form-control"
                  id="email"
                  placeholder="name@example.com"
                />
                <label for="email">Email address</label>
              </div>
              <div class="form-floating">
                <input
                  type="password"
                  name="password"
                  class="form-control rounded-bottom"
                  id="password"
                  placeholder="Password.."
                />
                <label for="password">Password</label>
              </div>
        
              <button class="w-100 btn btn-lg btn-primary mt-3" type="submit">
                Sign in
              </button>
            </form>
            <small class="d-block text-end mt-2">Already registered?. <a href="/login">Login</a></small>
        </main>
    </div>
</div>
@endsection