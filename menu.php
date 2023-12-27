<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메뉴 페이지</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h1 {
            background-color: #3498db;
            color: white;
            text-align: center;
            padding: 20px;
        }

        .orders{
            text-align: center;
            margin-top: 10px;
        }

        .order {
            text-align: center;
            float: center;
            background-color: #CCAA14;
            color: white;
            padding: 8px 16px;
            border: none;
            border-radius: 5px;            
            cursor: pointer;
        }

        .menu-item {
            border-bottom: 1px solid #ccc;
            padding: 10px 0;
            margin-bottom: 10px;
        }

        .menu-item:last-child {
            border-bottom: 1px solid #ccc;
        }

        .price {
            float: right;
            color: #333;
        }

    </style>
</head>
<body>
    


    <?php
            $id = $_POST["restaurant"];
    
			include "db.php";
		
			//SQL 쿼리
			$sql = "SELECT r.restaurant_id, r.restaurant_name, m.item_name, m.price, m.description
			FROM Restaurants r JOIN Menu m
            ON r.restaurant_id = m.restaurant_id
            WHERE 1=1";

            $sql .= " AND r.restaurant_id = '".$id."'";
            

			//mysql 쿼리 실행
			$res = mysqli_query($mysqli,$sql);
				
				if(mysqli_num_rows($res) > 0)
				{
                    
                   
                    $title = '
                    <h1>Menu</h1>
                    ';
                    $menu = '
            
                        
                        
					';
                
                    $number = 0;
				// 배열로 값 호출하기
				while($row = mysqli_fetch_array($res))
				{	
                    $number++;
                    $menu .= '

                        <div class="menu-item">
                                
                                <h2>'.$row['item_name'].'</h2>
                                <td><p>'.$row['price'].'원</p></td>
                                <td><p>'.$row['description'].'</p></td>
                        </div>
                    
                    ';

                    if($number == mysqli_num_rows($res)){
                    $title .= '
                    
                    <p>
                    <form action="order.php" method="POST">
                    <input type="checkbox" name="restaurant" value="'.$row['restaurant_id'].'" checked>
                    <input type="text" name="quantity1" size="10" placeholder="메뉴1의 수량">
                    <input type="text" name="quantity2" size="10" placeholder="메뉴2의 수량">
                    <input type="text" name="quantity3" size="10" placeholder="메뉴3 없으면 0">
                    <input type="submit" id="order" name="order" class = "order" value="주문하기">
                    </form>
                    </p>
                    ';
                    
                    }

				}
                
                echo $title;
                echo $menu;
				
				}
			//리소스(메모리) 해제
			mysqli_free_result($res);
			mysqli_close($mysqli);

    ?>

    

</body>
</html>
