<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    protected $table = "member";

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function Keranjang()
    {
        return $this->hasMany(Keranjang::class,'id_member');
    }
    public function Total()
    {
        $total = 0;
        foreach ($this->Keranjang()->get() as $key) {
            $total+= $key->quantity*$key->Produk->harga;
        }
        return $total;
    }
}
