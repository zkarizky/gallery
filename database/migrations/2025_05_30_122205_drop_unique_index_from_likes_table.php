<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class DropUniqueIndexFromLikesTable extends Migration
{
    public function up()
    {
        Schema::table('likes', function (Blueprint $table) {
            $table->dropUnique('likes_user_id_photo_id_unique'); // sesuaikan nama index-nya
        });
    }

    public function down()
    {
        Schema::table('likes', function (Blueprint $table) {
            $table->unique(['user_id', 'photo_id']);
        });
    }
}