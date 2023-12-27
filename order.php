<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문 페이지</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        header {
            background-color: #3498db;
            color: white;
            text-align: center;
            padding: 10px;
        }

        section {
            display: inline-block;
            align-items: center;
            margin-top: 20px;
        }

        .menu-item {
            width: 200px;
            margin: 10px;
            padding: 10px;
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .order-summary {
            display: left;
            width: 300px;
            margin: 20px;
            padding: 10px;
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        footer {
            text-align: center;
            margin-top: 20px;
            padding: 10px;
            background-color: #333;
            color: white;
        }
    </style>
</head>
<body>
    
    <header>
        <h1>Order</h1>
    </header>

    <?php
        include "db.php";
		session_start();
        //SQL 쿼리
        $sql = "SELECT r.restaurant_name, m.menu_id, m.item_name, m.price, d.discount_percentage as discount, d.start_date, d.end_date, o.order_id, c.customer_id
    FROM Restaurants r JOIN Menu m
    ON r.restaurant_id = m.restaurant_id
    JOIN Discount d
    ON m.restaurant_id = d.restaurant_id
    JOIN Orders o
    ON d.restaurant_id = o.restaurant_id
    JOIN Customers c
    ON o.customer_id = c.customer_id
    WHERE 1=1";

        $sql .= " AND r.restaurant_id = '".$_POST["restaurant"]."'";

        //mysql 쿼리 실행
        $res = mysqli_query($mysqli,$sql);
            
            if(mysqli_num_rows($res) > 0)
            {
                $section = '
                ';
        
               
                $orderList = '
                    
                ';

            // 배열로 값 호출하기
            $q1 = (int)($_POST['quantity1']);
            $q2 = (int)($_POST['quantity2']);
            $q3 = (int)($_POST['quantity3']);
            $number = 0;
            $total = 0;
            $orderid = 51;
            while($row = mysqli_fetch_array($res))
            {
                $section .= '
                <section>
                <div class="menu-item">
                    <h2>'.$row['item_name'].'</h2>
                    <p>price: '.$row['price'].'원</p>
                    <p>수량: '.$_POST['quantity'.strval($number+1).''].'</p>
                    
                </div>
                </section>
                ';
                
                $row = $result->fetch_assoc();
$customer_id = $row['customer_id'];  // Line 111
$restaurant_id = $row['restaurant_id'];  // Line 111

                $query = "INSERT INTO Orders VALUES 
                ('order".$orderid."', '".$_SESSION['customer_id']."', '".$row['restaurant_id']."', '".$row['menu_id']."', ".$_POST['quantity'.strval($number+1)].", '2023년 11월 ".date('d')."일 ".time()."')";
                $result = mysqli_query($mysqli,$query);
                $number++;
                $orderid++;
                
                $total += $row['price'] * $_POST['quantity'.strval($number)];
                
                if($number == mysqli_num_rows($res))
                {
                    
                    $today = date("Y-m-d");
                    $start = $row['start_date'];
                    $end = $row['end_date'];

                        if($today >= $start && $today<= $end && $row['discount'] != 0)

                        {
                        $total *= (100 - $row['discount'])/100;
                        $orderList .= '
                        <section>
                        <div class="order-summary">
                            <h2>Ordering List</h2>
                            <ul id="orderList">
                                
                            </ul>
                            <p>'.$row['discount'].'% 할인('.$row['start_date'].' ~ '.$row['end_date'].')이 가능합니다.</p>
                            <p>Total: '.$total.' 원</p>
                            <form action="" method="POST">
                            <a href="admin.php"><input type= "button" value="주문완료"></a>
                            </form>
                        </div>
                        </section>';                     
                        

                        }else
                        {
                        $orderList .= '
                        <section>
                        <div class="order-summary">
                            <h2>Ordering List</h2>
                            <ul id="orderList">
                                
                            </ul>
                            <p>할인기간('.$row['start_date'].' ~ '.$row['end_date'].')이 아닙니다.</p>
                            <p>Total: '.$total.' 원</p>
                            <form action="" method="POST">
                            <a href = "admin.php"><input type= "button" value="주문완료"></a>
                            </form>
                        </div>
                        </section>';

                        }

                    }     
            }
            echo $section;
            echo $orderList;

            }

            //리소스(메모리) 해제
            mysqli_free_result($res);
            mysqli_close($mysqli);
    ?>

</body>
</html>