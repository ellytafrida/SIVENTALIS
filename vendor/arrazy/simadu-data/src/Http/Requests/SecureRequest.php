<?php

namespace Razy\SimaduData\Http\Requests;

use Illuminate\Support\Facades\Http;

class SecureRequest
{
    public static function init()
    {
        $self = new static();
        $self->http = Http::withToken('12345');
        return $self;
    }

    public function call($url)
    {
        return $this->http->get($url);
    }
}
