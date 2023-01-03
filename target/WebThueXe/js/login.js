$(document).ready(function () {
    var checkU = false;
    var index = -1;
    $('#button1').click(function () {
        event.preventDefault();
        var url = "signup.html";
        location.replace(url);
    });
    $('#button').click(function () {
        var tendangnhap = $('#username').val();
        var listTenDangNhap = new Array("ltweb@gmail.com", "thuexemay@gmail.com", "ltw@gmail.com");
        for (var i = 0; i < listTenDangNhap.length; i++) {
            if (tendangnhap == listTenDangNhap[i]) {
                checkU = true;
                index = i;
                break;
            } else {
                checkU = false;
            }
        }
        if (checkU == false) {
            alert("Username không tồn tại");
        }
        if (index != -1) {
            var checkM = false;
            var matkhau = $('#pass').val();
            var listMatKhau = new Array("123", "12345", "1234");
            if (matkhau == listMatKhau[index]) {
                alert("Đăng nhập thành công");
                event.preventDefault();
                var url = "index.html";
                location.replace(url);
            } else {
                alert("Sai mật khẩu");
            }
        } else {
            alert("Vui lòng kiểm tra lại tên đăng nhập");
        }
    });
});