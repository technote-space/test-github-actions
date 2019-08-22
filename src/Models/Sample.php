<?php
declare(strict_types=1);

namespace Technote\TestRepo\Models;

/**
 * Class Sample
 * @package Technote\TestRepo\Models
 */
class Sample
{
    public function add($item1, $item2)
    {
        return $item1 + $item2;
    }

    public function sub($item1, $item2)
    {
        return $item1 - $item2;
    }

    public function mul($item1, $item2)
    {
        return $item1 * $item2;
    }

    public function div($item1, $item2)
    {
        return $item1 / $item2;
    }

    public function pow($item1, $item2)
    {
        return $item1 ** $item2;
    }
}
