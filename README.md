# Yêu cầu môi trường

-   php ^8.1
-   composer
-   mysql

# Cài đặt project

-   Clone về từ github
-   Vào thư mục backend
-   Thực hiện các bước sau:
    -   Tạo database trên mysql
    -   Chạy lệnh `composer install` để cài đặt các dependencies
    -   Chạy lệnh `cp .env.example .env` để tạo file môi trường
    -   Vào file `.env` vừa tạo chỉnh sửa các thông tin liên quan đến database cho phù hợp với database vừa tạo
    -   Chạy lệnh `php artisan key:generate` để tạo app key
    -   Chạy lệnh `php artisan migrate` để tạo bảng trong database
    -   Thêm dữ liệu đã chuẩn bị sẵn vào trong database (trong file data_satoru.sql)
    -   Chạy lệnh `php artisan serve` để chạy project. Project sẽ được chạy mặc định ở http://localhost:8000
