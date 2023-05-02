<?php
/*
 * Use of Static Method */
class ColorUtil
{
    public static function hexToRgb($color){
        // Check whether hex value or not
        $color = self::_checkHex($color);
        // Convert hex to dec
        $R = hexdec($color[0] . $color[1]);
        $G = hexdec($color[2] . $color[3]);
        $B = hexdec($color[4] . $color[5]);
        $RGB['R'] = $R;
        $RGB['G'] = $G;
        $RGB['B'] = $B;
        return $RGB;
    }
    public static function _checkHex($hex){
        // Strip # sign is present
        $color = str_replace('#','',$hex);
        // validate for 6 digits
        if (strlen($color)==3){
            $color = $color[0].$color[0] .
                    $color[1].$color[1] .
                    $color[2].$color[2];
        }elseif (strlen($color)!=6){
            throw new Exception("ERROR: HEX color should 6 or 3 digits long");
        }
        return $color;
    }
}
$RGB = ColorUtil::hexToRgb("#ffbbcc");
print_r($RGB);
