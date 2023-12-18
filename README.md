# Mô tả Project
Trang Web sử dụng HTML, CSS, Javascript, được viết bằng ngôn ngữ PHP, sử dụng framework Laravel và sử dụng kĩ thuật AJAX vào một số chức năng.</br>
</br>
Trang web bán đồ thể thao như giày, áo, quần, và các phụ kiện hỗ trợ thể thao. Website có các chức năng như đăng nhập, đăng ký, Thêm sản phẩm vào giỏ hàng, chọn số lượng sản phẩm, bình luận, gửi email cho khách hàng khi mua hàng thành công, Thêm, xoá, sửa, cập nhật sản phẩm, thông báo thời gian hết khuyến mãi (bộ đếm ngược flash sale) và còn một số chức năng quan trọng khác trong admin.

# PhatTrienUngDungWeb
<h1>Cách chạy project:</h1>
<h3>Thêm file database</h3>
- Yêu cầu: </br>+ Tải Xampp, file baocao.sql </br>
- Mở Xampp -> Open Application -> PHPAdmin -> Import file baocao.sql vào 
</br>(Lưu ý không đổi tên file database để không cần phải config lại trong file env)
</br>
<h3>Nếu mới tải project lần đầu thì copy file env.example đổi tên thành env và sửa tên database lại đúng tên</h3>
Các câu lệnh reset và update version: </br>
- composer update</br>
- php artisan cache:clear</br>
- php artisan config:clear</br>
Tạo khoá:</br>
- php artisan key:generate</br>
Chạy đồ án:</br>
- php artisan serve</br>
Các chức năng cần chạy lệnh:</br>
+ Gửi mail:</br>
sửa các thông tin lại (file env): </br>
MAIL_MAILER=smtp</br>
MAIL_HOST=smtp.gmail.com</br>
MAIL_PORT=587</br>
MAIL_USERNAME= //Mail address</br>
MAIL_PASSWORD=(Pass lấy từ google (Bật xác minh 2 bước) trong phần bảo mật -> mật khẩu ứng dụng -> chọn Thư và Hệ điều hành)</br>
MAIL_ENCRYPTION=tls</br>
MAIL_FROM_ADDRESS= //Mail address</br>
MAIL_FROM_NAME="${APP_NAME}"</br>

- php artisan que:work (1 terminal riêng) // Gửi mail thì phải chạy lệnh này</br>
- sửa nhiều trong mail thì composer dump-autoload (tạo các fail job và job mail)</br>
- khởi tạo laị các table php artisan migrate</br>
