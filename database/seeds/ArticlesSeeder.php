<?php

use Illuminate\Database\Seeder;
use App\Article;

class ArticlesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::insert('INSERT INTO `articles` (`name`, `text`, `img`) VALUES (?,?,?)',
        [
            'blog post',
            'text',
            'pic1.jpeg'
        ]);
    }
}
