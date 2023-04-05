<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<style type="text/css">
	.favorites_total{
		max-width: 1500px; 
		padding: 40px 250px 160;	
		margin: auto;
	}
	
	.favorites_total_2{
 	    overflow: hidden; 
	    min-height: 380px;
	}

	.favorites_title{
	    padding-bottom: 16px;
    	border-bottom: 3px solid #222;

	}

	.favorites_title_2{
	    font-weight: 600;
	}
	
	
	.goShop{
		padding: 80px 0;
		text-align: center;
	}
	.goShop p{
		font-size: 13px;
	    letter-spacing: -.07px;
	    color: rgba(34,34,34,.5);
	}
	
	.goShop a{
	    border: 1px solid #d3d3d3;
   		color: rgba(34,34,34,.8);
	    font-size: 12px;
	    padding: 12px 14px;
        border-radius: 10px;
	}
	
</style>

<meta charset="EUC-KR">
<title>Insert title here</title>

</head>
<body>
	<div class="favorites_total">
		<div class="favorites_total_2">
			<div class="favorites_title">
				<h4 class="favorites_title_2">���� ��ǰ</h4>
			</div>
			
			<div class="goShop">
				<p >�߰��Ͻ� ���� ��ǰ�� �����ϴ�.</p>
				<a href="${contextPath}/shop/list.do" id="goShop_a">SHOP�ٷΰ���</a>			
			</div>
			
			
		</div>
	
	
	
	
	</div>	



<script type="text/javascript">
		
		
		$("#goShop_a").mouseover(function(){
		    
			$("#goShop_a").css("background-color", "#e5e5e587");
			
		});
	
	
		$("#goShop_a").mouseout(function(){
		
	  		$("#goShop_a").css("background-color", "white");
		
		});
	
</script>

</body>
</html>

