<?php

namespace ctrl\index;

use L;
use of;
use \model\indexModel;

class index extends L {
    public function index() {
        $this->display('/index/index.html');
    }

    /**
     * 描述 ：登录
     */
    public function login() {
        // 处理注册逻辑
        $params = $_POST;
        // 可以使用 $params['username'] 和 $params['password'] 来获取这些数据
        $username = $params['username'] ?? '';
        $password = $params['password'] ?? '';
        if (empty($username) || empty($password)) {
            return ['success' => false, 'message' => '用户名和密码不能为空'];
        }
        $result = indexModel::verifyUser($username, $password);
        return $result;
    }

    /**
     * 描述 ：注册
     */
    public function register() {
        // 处理注册逻辑
        $params = $_POST;
        // 可以使用 $params['username'] 和 $params['password'] 来获取这些数据
        $username = $params['username'] ?? '';
        $password = $params['password'] ?? '';
        if (empty($username) || empty($password)) {
            return ['success' => false, 'message' => '用户名和密码不能为空'];
        }
        $result = indexModel::createUser($username, $password);
        return $result;
    }

    public function home() {
        echo '欢迎回来---' . date('Y-m-d H:i:s');
    }
}
