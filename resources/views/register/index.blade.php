@extends('layout.main')

@section('container')
<div class="row justify-content-center">
    <div class="col-lg-4">
        <main class="form-registration">
            <form method="post" action="/register">
                @csrf

              <h1 class="h3 mb-3 fw-normal text-center">Please Login!</h1>
        
              <div class="form-floating">
                <input
                  type="text"
                  name="name"
                  class="form-control rounded-top @error('name') is-invalid @enderror"
                  id="name"
                  value="{{ old('name') }}"
                  placeholder="Name.."
                />
                <label for="name">Name</label>
                @error('name')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="form-floating">
                <input
                  type="text"
                  name="username"
                  class="form-control @error('username') is-invalid @enderror"
                  id="username"
                  value="{{ old('username') }}"
                  placeholder="Username.."
                />
                <label for="username">Username..</label>
                @error('username')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="form-floating">
                <input
                  type="text"
                  name="email"
                  class="form-control @error('email') is-invalid @enderror"
                  id="email"
                  value="{{ old('email') }}"
                  placeholder="name@example.com"
                />
                <label for="email">Email address</label>
                @error('email')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="form-floating">
                <input
                  type="password"
                  name="password"
                  class="form-control rounded-bottom @error('password') is-invalid @enderror"
                  id="password"
                  placeholder="Password.."
                />
                <label for="password">Password</label>
                @error('password')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
              </div>
        
              <button class="w-100 btn btn-lg btn-primary mt-3" type="submit">
                Sign in
              </button>
            </form>
            <small class="d-block text-end mt-2">Already registered? <a href="/login">Login</a></small>
        </main>
    </div>
</div>
@endsection