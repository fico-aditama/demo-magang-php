<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Faker\Factory as Faker;

class PostsTableSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create();

        foreach (range(1, 10) as $index) {
            DB::table('posts')->insert([
                'user_id' => $faker->numberBetween(1, 10), // ID pengguna yang memiliki postingan
                'title' => $faker->sentence,
                'content' => $faker->paragraph,
            ]);
        }
    }
}
