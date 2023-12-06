<?php

use Illuminate\Support\Facades\DB;

DB::listen(function ($query) {
    dump("[{$query->time}ms] {$query->sql}");
    if ($query->bindings) {
        dump($query->bindings);
    }
});