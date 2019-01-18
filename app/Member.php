<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Member extends Model
{
	 use Notifiable;
	 
    protected $table = "member";
    protected $guarded = [];
    protected $hidden = [
        'password', 'remember_token',
    ];
}
