<?php
    // nội dung ở vị trí này
    echo "Hello Binh!";
    //Biến: $Tên Biến = Giá trị
    $hoTen ="An Bình ";
    $tuoi = 20;
    echo $hoTen.$tuoi ."<br>";
    ////strlen() Độ dìa chuôi
    echo strlen($hoTen). "<br>";

    // Đếm số từ
    echo str_word_count($hoTen)."<br>";

    //Tìm ký tự trong chuỗi
    echo strpos($hoTen,"B")."<br>";

    //Thay thế ký tự trong chuỗi
    echo str_replace("An","Nguyễn",$hoTen)."<br>";

    $soThuNhat = 19;
    $soThuHai = 1;

    //phép cộng
    echo $soThuNhat + $soThuHai ."<br>";
    echo $soThuNhat - $soThuHai ."<br>";
    echo $soThuNhat * $soThuHai ."<br>";
    echo $soThuNhat / $soThuHai ."<br>";

    //toán tử gán
    # += -= *= /= %=
    $soThuNhat += $soThuHai;
    echo $soThuNhat . "<br>";

    //toán tử so sánh: == ; != ; > ; < ; >= ; <= ; ===
    var_dump($soThuNhat == $soThuHai);
    echo "<br>";

    //Câu điều kiện 
    //if ("Điều kiện"){
    //logic
    //}else{
    //logic
    //}
    $tong = $soThuNhat + $soThuHai;
    if ($tong < 15) {
    echo "Tổng nhỏ hơn 15. Kết quả là: " . $tong . "<br>";
    } elseif ($tong == 15) {
    echo "Tổng bằng 15.<br>";
    } else {
    echo "Tổng lớn hơn 15. Kết quả là: " . $tong . "<br>";
    }

    //switch case
    $color = "red";
    switch($color){
        case "red":
            echo"<br>";
            echo"IS RED";
            break;
        case "blue":
            echo"<br>";
            echo"IS BLUE";
        default:
            echo"<br>";
            echo"no color";
            break;
    }

    //for
    for ($i = 0; $i < 10 ; $i++){
        echo $i . "<br>";
    }
    
    //Mảng
    echo "<br>";
    $mang =["An Binh","Dep Trai",".Net"];
    //Đếm phẩn tử
    echo count ($mang)."<br>";
    echo $mang[1]."<br>";

    $mang[] ="no1 ";
    print_r($mang);

    echo "<br>";
    unset($mang[3]);
    print_r ($mang)
?>