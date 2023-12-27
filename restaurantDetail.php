<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>음식점 상세 페이지</title>
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

        img {
            max-width: 100%;
            height: auto;
        }

        .menu-buttons {
            text-align: center;
            margin-top: 10px;
        }

        .menu{
            
            text-align: center;
            float: center;
            background-color: #CCAA14;
            color: white;
            padding: 8px 16px;
            border: none;
            border-radius: 5px;            
            cursor: pointer;
        }

        .section {
            margin-bottom: 20px;
        }

        .list-button{
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
            margin-bottom: 10px;
        }

        .table {
            margin-bottom: 20px;
        }

        .review {
            border-bottom: 1px solid #ccc;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }

        .ranking {
            color: #3498db;
        }
    </style>
</head>

<body>

        <?php
        $id = $_POST['restaurant'];
        include "db.php";
		
        //SQL 쿼리
        $sql = "SELECT r.restaurant_id, r.restaurant_name, r.location, r.phone, m.item_name, m.price, v.comment, g.score
        FROM Restaurants r JOIN Menu m
        ON r.restaurant_id = m.restaurant_id
        JOIN Reviews v
        ON m.restaurant_id = v.restaurant_id
        JOIN Ranking g
        ON v.restaurant_id = g.restaurant_id
        WHERE 1=1";

        $sql .= " AND r.restaurant_id ='".$id."'";
        $sql .= " GROUP BY item_name ";

        //mysql 쿼리 실행
        $res = mysqli_query($mysqli,$sql);
            if(mysqli_num_rows($res) > 0)
			{
                /*
                <div class="section">
                    <img src="음식점사진.jpg" alt="picture">
                </div>*/

                $title =  '';

                $location = '<div class="section">
                            <h2>Location & phone</h2>
                                <p></p>

                            </div>';

                $menu = '
                        <div class="section">
                                    <h2>Menu</h2>
                                    
                                    
                                    
                                    
                                    </div>
                        ';

                
                $review = '';    

                $ranking = '';

            $number = 1;
            while($row = mysqli_fetch_array($res))
            {	
                if($number == mysqli_num_rows($res)){
                $title .= '<h1>'.$row['restaurant_name'].' <form action="menu.php" method="POST" class="menu-buttons">
                <input type="checkbox" name="restaurant" value="'.$row['restaurant_id'].'" checked>
                <input type="submit" name="submit" value="메뉴더보기" class="menu">
                </form></h1>
                <form>
                <a href ="restaurantList.php"><input type="button" id="listAll" class="list-button" name="listAll" value="< 음식점목록" /></a>
                </form>';
                

                $location ='<div class="section">
                    <h2>Location & phone</h2>
                    <p>'.$row['location'].'</p><p>'.$row['phone'].'</p>
                </div><br>';

                $ranking = '<div class="ranking">
                                <h3>ranking</h3>
                                <p>'.$row['score'].'</p>
                            
                          </div>';

                $review .= '<div class="section">
                          <h2>Review & Ranking</h2>
                          
                          <div class="review">
                              <h3>reviews</h3>
                              
                              <td>'.$row['comment'].'</td>
                              
                              
                          </div>
                      </div>';
                }


                
                
                $menu .= '<div class="section">
                            <h2></h2>
                            
                            <td>'.$row['item_name'].' - '.$row['price'].'원</td>
                            
                            
                            </div><br>';

                $number++;
                
            }
            echo $title;
            echo $location;
            echo $menu;
            echo $review;
            echo $ranking;
            }

        //리소스(메모리) 해제
        mysqli_free_result($res);
        mysqli_close($mysqli);
        ?>


</body>
</html>