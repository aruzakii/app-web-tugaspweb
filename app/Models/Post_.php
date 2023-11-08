<?php
namespace App\Models;

class Post {
    private static $blog_post = [
        [
            "judul"=>"Post Pertama",
            "slug"=>"post-pertama",
            "author"=>"Fahrel Ardzaky",
            "body"=>" Lorem, ipsum dolor sit amet consectetur adipisicing elit. Labore nam nostrum molestias incidunt ullam deserunt odit aspernatur, alias perspiciatis, reprehenderit minus sit doloremque magni beatae aliquam pariatur veritatis. Error illum numquam aliquam cum, eum alias, molestiae maxime iusto fugit sit sunt? Ad iure voluptatem cum quidem. Voluptatum commodi laboriosam dolore magni ullam labore veritatis sunt, facilis beatae quisquam, quod laborum omnis ab atque odit cumque obcaecati ducimus ipsa? Necessitatibus, vitae ex earum minus odit ipsum animi eos? Tempore, exercitationem esse."
    
    
        ],
        [
            "judul"=>"Post Kedua",
            "slug"=>"post-kedua",
            "author"=>"Fahrel Ganteng",
            "body"=>"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis architecto quis magnam quia a quam dicta maiores tenetur aliquid sequi iusto, natus mollitia, labore pariatur assumenda obcaecati necessitatibus qui repellat nulla consequatur quidem modi in sunt. Iusto error numquam, excepturi suscipit voluptatum officia autem voluptatibus at, nostrum illo praesentium possimus tempora totam expedita quas minima recusandae laudantium aliquid cumque deleniti dolorum voluptatem tenetur magni dignissimos. Omnis autem distinctio delectus repellat quam expedita, magni vel numquam optio quas. Nisi sed saepe tenetur dolorum! Odit, nulla odio tempora ab sunt quibusdam quis eaque totam voluptatibus doloribus repellendus quisquam voluptas iure ut nisi."
        ]
        ];

        public static function all(){
            return collect(self::$blog_post);
        }

        public static function detail_post($slug){
            // $new_arr = [];
            // foreach (static::all() as $post) {
            //     if($post["slug"] == $slug){
            //         $new_arr = $post;
    
            //     }
            // }
            return static::all()->firstWhere('slug',$slug);
        }

}