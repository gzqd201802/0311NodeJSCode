// app.js 新建在项目的根目录下，和 package.json 同级
// app.js 一般称为 NodeJS 项目的入口文件。

// 1. 按需导入 mysql 包
const mysql = require('mysql');

// 2. 创建 mysql 数据库
const connection = mysql.createConnection({
    // 本地数据库地址 (本地服务器固定写法)
    host: 'localhost',
    // 数据库用户名 - 默认用户名是 root
    user: 'root',
    // 数据库密码 - 默认密码是 root
    password: 'root',
    // 数据库名称
    database: 'hm43'
});

// 3. 连接数据库
connection.connect();

// 4. 执行 mysql 语句，并在回调函数中获取结果
// 用法：
//    connection.query( mysql语句, 回调函数 );
// 建议：
//    mysql 语句的参数位置用反引号格式字符串数据
connection.query(`select * from hero`, (error, results, fields) => {
    // error    错误对象
    // results  结果
    // fields   字段(不需要可以不写)
    if (error) {
        console.log('操作出现错误');
    } else {
        console.log('results', results);
        console.log('fields', fields);
    }
});

// 5. 停止数据库连接(不需要停止)
// connection.end();