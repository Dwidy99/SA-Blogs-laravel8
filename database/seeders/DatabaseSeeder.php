<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Post;
use App\Models\Category;
use App\Models\User;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();

        User::create([
            'name' => 'Dwi Yulianto',
            'email' => 'dwi@gmail.com',
            'password' => bcrypt('12345'),
        ]);

        Category::create([
            'name' => 'Laravel',
            'slug' => 'laravel',
        ]);

        Category::create([
            'name' => 'Codeigniter',
            'slug' => 'codeigniter',
        ]);

        Category::create([
            'name' => 'Belajar Coding',
            'slug' => 'belajar-coding',
        ]);

        Post::create([
            'category_id' => 1,
            'user_id' => 1,
            'title' => 'Laravel',
            'slug' => 'laravel',
            'excerpt' => 'Laravel adalah framework PHP untuk membangun aplikasi web',
            'body' => 'Laravel adalah framework PHP untuk membangun aplikasi web kadang suka ngaco kadang suka nyebelin juga gada akhlak',
            'published_at' => now(),
        ]);
        
        Post::create([
            'category_id' => 2,
            'user_id' => 1,
            'title' => 'Codeigniter',
            'slug' => 'codeigniter',
            'excerpt' => 'Codeigniter adalah framework PHP untuk membangun aplikasi web',
            'body' => 'Codeigniter adalah framework PHP untuk membangun aplikasi web kadang suka ngaco kadang suka nyebelin juga gada akhlak',
            'published_at' => now(),
        ]);
        
        Post::create([
            'category_id' => 3,
            'user_id' => 1,
            'title' => 'Gada Ahklal',
            'slug' => 'gada-ahklal',
            'excerpt' => 'Layanan gada Akhlak adalah framework PHP untuk membangun aplikasi web',
            'body' => 'Layanan gada Akhlak adalah framework PHP untuk membangun aplikasi web kadang suka ngaco kadang suka nyebelin juga gada akhlak',
            'published_at' => now(),
        ]);
        
        Post::create([
            'category_id' => 3,
            'user_id' => 1,
            'title' => 'Blog Post Keempat',
            'slug' => 'blog-post-keempat',
            'excerpt' => 'Keempat gada Akhlak adalah framework PHP untuk membangun aplikasi web',
            'body' => 'Keempat gada Akhlak adalah framework PHP untuk membangun aplikasi web kadang suka ngaco kadang suka nyebelin juga gada akhlak',
            'published_at' => now(),
        ]);
    }
}