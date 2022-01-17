<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'category_id' => mt_rand(1, 3),
            'user_id' => mt_rand(1, 2),
            'title' => $this->faker->sentence(2, 4),
            'slug' => $this->faker->slug(),
            'excerpt' => $this->faker->paragraph(5, 10),
            'body' => $this->faker->paragraph(10, 20),
        ];
    }
}