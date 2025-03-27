<?php

namespace model;

use of;
use L;

class indexModel {
    public static $table = 'user';

    /**
     * 描述：注册用户
     */
    public static function createUser($username, $password) {
        // 检查用户名是否已存在
        $existingUser = L::sql("SELECT id FROM `user` WHERE username ='{$username}'");
        if ($existingUser) {
            return ['success' => false,'message' => '用户名已存在'];
        }
        // 密码加密
        $passwordMd5 = md5($password);
        $sql = "INSERT INTO `user` (`username`, `password`) VALUES ('{$username}','{$passwordMd5}')";
        L::sql($sql);
        return ['success' => true];
    }

    /**
     * 描述：验证用户
     */
    public static function verifyUser($username, $password) {
        // 检查用户名是否已存在·
        $existingUser = L::sql("SELECT `password` FROM `user` WHERE username ='{$username}'");
        if (empty($existingUser)) {
            return ['success' => false,'message' => '用户名不存在'];
        }
        $passwordOld = $existingUser[0]['password'];
         // 密码加密
         $passwordMd5 = md5($password);
        // 验证密码
        if ($passwordOld == $passwordMd5) {
            return ['success' => true];
        }else{
            return ['success' => false,'message' => '密码错误'];
         }
    }
}