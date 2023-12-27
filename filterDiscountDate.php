<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>음식점 목록 페이지</title>
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

		.filter-buttons {
            text-align: center;
            margin-top: 10px;
        }

        .filter-button {
            background-color: #3498db;
            color: white;
            padding: 8px 16px;
            border: none;
            border-radius: 5px;
            margin-right: 10px;
            cursor: pointer;
        }

        .discount-button {
            background-color: #CCAA14;
            color: white;
            padding: 8px 16px;
            border: none;
            border-radius: 5px;
            margin-right: 10px;
            cursor: pointer;
        }

        .detail{
            margin-top: 10px;
            text-align: center;
            float: center;
            background-color: #CCAA14;
            color: white;
            padding: 8px 16px;
            border: none;
            border-radius: 5px;            
            cursor: pointer;
        }

        table {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            margin-top: 20px;
            gap: 20px;
        }
        
        p {
            flex: 0 0 auto;
            width: 30px;
            padding: 10px;
            background-color: #3498db;
			color: white;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h3 {
            display: inline;
        }

		th {
			flex: 0 0 auto;
            width: 300px;
            padding: 10px;
            background-color: #3498db;
			color: white;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
		}

        td {
            flex: 0 0 auto;
            width: 300px;
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
        .back-home {
        background-color: white; 
        color: black; 
        padding: 10px 20px; 
        font-size: 16px; 
        border: none; 
        border-radius: 5px;
        cursor: pointer; 
        transition: background-color 0.3s; 
    }
		
		</style>
		
		
</head>
<body>
    <header>
        <h1>Restaurant List</h1>
        <button type="button" class="back-home" onClick="location.href='home_page/home.php'">Go Home</button>
    </header>
	
        
	<form class="filter-buttons">
		<a href ="restaurantList.php"><input type="button" id="filterAll" class="filter-button" name="filterAll" value="전체" /></a>
		<a href ="filterKor.php"><input type="button" id="filterKor" class="filter-button" name="filterKor" value="한식" /></a>
		<a href ="filterJpn.php"><input type="button" id="filterJpn" class="filter-button" name="filterJpn" value="일식" /></a>
		<a href ="filterChn.php"><input type="button" id="filterChn" class="filter-button" name="filterChn" value="중식" /></a>
		<a href ="filterWes.php"><input type="button" id="filterWes" class="filter-button" name="filterWes" value="양식" /></a>
		<a href ="filterSnac.php"><input type="button" id="filterSnac" class="filter-button" name="filterSnac" value="분식" /></a>
        <a href ="filterDiscount.php"><input type="button" id="filterDiscount" class="discount-button" name="filterDiscount" value="할인(%)" /></a>
        <a href ="filterDiscountDate.php"><input type="button" id="filterDiscountDate" class="discount-button" name="filterDiscountDate" value="오늘할인(%)" /></a>
	</form>
	
		<table>
            
		</table>
		<script>
		</script>

</body>

    <div class="restaurant-list" id="restaurantList">
		<?php
			include "db.php";
		
			//SQL 쿼리
			$sql = "SELECT r.restaurant_id, r.restaurant_name, c.category_name, d.discount_percentage as discount, d.start_date, d.end_date
			, rank() over (order by discount desc) as discount_rank
            FROM Restaurants r JOIN Category c
            ON r.restaurant_id = c.restaurant_id
            JOIN Discount d
            ON c.restaurant_id = d.restaurant_id
			GROUP BY restaurant_name 
            ORDER BY discount_rank
            ";

			//mysql 쿼리 실행
			$res = mysqli_query($mysqli,$sql);
				// 배열로 값 호출하기
				if(mysqli_num_rows($res) > 0)
				{
					$table = '
					<table>
						<tr>
                            <th></th>
                            <th>음식점 / 종류</th>
                            <th>할인(%)</th>
                            <th>날짜</th>				
					
						</tr>
					';
				
				while($row = mysqli_fetch_array($res))
				{	
                    if($row['start_date'] <= date("Y-m-d") && $row['end_date'] >= date("Y-m-d"))
                    {
					$table .= '
					<tr>
                        <td><form action="restaurantDetail.php" method="POST">
                        <input type="checkbox" name="restaurant" value="'.$row['restaurant_id'].'" checked>
                        <input type="submit" name="submit" value="상세보기" class="detail"></form>
                        </td>
						<td><h3>'.$row['restaurant_name'].'</h3> / '.$row['category_name'].'</td>
						<td><h2>'.$row['discount'].'%</h2></td>
                            <td>'.$row['start_date'].' ~ '.$row['end_date'].'</td>
					</tr>
					';
                    }
				}
				$table .= '</table>';
				echo $table;
				
				}
			//리소스(메모리) 해제
			mysqli_free_result($res);
			mysqli_close($mysqli);
		
		?>
    </div>

</body>
</html>
