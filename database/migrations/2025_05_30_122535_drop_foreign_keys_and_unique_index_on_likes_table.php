<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ModifyLikesTableRemoveUniqueIndex extends Migration
{
    public function up()
    {
        Schema::table('likes', function (Blueprint $table) {
            // Drop foreign keys dulu
            $table->dropForeign('likes_user_id_foreign');
            $table->dropForeign('likes_photo_id_foreign');

            // Drop unique index
            $table->dropUnique('likes_user_id_photo_id_unique');

            // Buat ulang foreign keys tanpa unique index
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('photo_id')->references('id')->on('photos')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::table('likes', function (Blueprint $table) {
            // Drop foreign keys dulu
            $table->dropForeign(['user_id']);
            $table->dropForeign(['photo_id']);

            // Buat ulang unique index
            $table->unique(['user_id', 'photo_id']);

            // Buat ulang foreign keys
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('photo_id')->references('id')->on('photos')->onDelete('cascade');
        });
    }
}
