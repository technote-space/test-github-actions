<?php
declare(strict_types=1);

namespace Technote\SearchHelper\Tests;

use PHPUnit\Framework\TestCase;
use Technote\TestRepo\Models\Sample;

/**
 * Class SampleTest
 * @package Technote\SearchHelper\Tests
 */
class SampleTest extends TestCase
{
    public function testAdd()
    {
        $this->assertEquals(3, (new Sample())->add(1, 2));
    }

    public function testSub()
    {
        $this->assertEquals(-1, (new Sample())->sub(1, 2));
    }
}
