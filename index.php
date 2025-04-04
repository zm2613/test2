<?php
/**
 * 描述 : 控制层共享文件, 控制层文件与类名相同, 已$_GET['a']作为方法名(默认index)
 * 作者 : Edgar.lee
 */
//加载核心
require dirname(__FILE__) . '/include/of/of.php';
//默认首页
$_GET += array('c' => 'index_index', 'a' => 'index');

//调度代码
if (isset($_GET['c'])) {
    //类名, 动作, 安全校验
    $result = of::dispatch('ctrl\\' . strtr($_GET['c'], '_', '\\'), $_GET['a'], null);

    //返回数组转成json
    if (is_array($result)) {
        //jsonp 方式
        if (isset($_GET['callback'])) {
            echo $_GET['callback'], '(', of_base_com_data::json($result), ');';
        //常规 方式
        } else {
            echo of_base_com_data::json($result);
        }
    }
}