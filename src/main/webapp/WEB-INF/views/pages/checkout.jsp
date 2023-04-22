<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="${contextPath}/resources/css/checkout.css">
<c:set var="checkType" value="${type}"/>

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-option">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="breadcrumb__text">
          <h4>Check Out</h4>
          <div class="breadcrumb__links">
            <a href="${contextPath}/main.do">Home</a> <a href="${contextPath}/shop/list.do">Shop</a>
            <span>Check Out</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Checkout Section Begin -->
<section class="checkout spad">
  <div class="container">
    <div class="checkout__form">
      <form action="${contextPath}/order/orderDetail.do" method="post" name="orderConfirm">
        <div class="row">
          <div class="col-lg-7 col-md-6">
          <input type="hidden" name="product_id" value="${product.PRODUCT_ID}">
          <c:choose>
          	<c:when test="${type eq 'buy'}">
	            <h4 class="coupon__code">
					<input type="radio" id="bids" name="option" value="00" onchange="setDisplay()"  required="required" checked="checked"  >
					<label for="bids"><span style="font-size:24px;">구매입찰</span></label>
					<c:if test="${not empty buyAsks}">
					<input type="radio" id="check" name="option" value="10" onchange="setDisplay()"    > 
					<label for="check"><span style="font-size:24px;">즉시구매</span></label>
					<input type="hidden" name="asks_idx" value="${buyAsks.ASKS_IDX}">
					</c:if>
					<input type="hidden" name="type" value="buy">
	            </h4>
				<div class="checkout__input">
					<div id="price" style="display: none;">
						<p style="font-size: 24px;">
						   	구매희망가격<span>*</span>
						 </p>
						<input type="text" class="ABprice" name="ABprice" placeholder="구매 희망가" style="color:black;" required="required"/>
					</div>
				</div>
			</c:when>
			<c:otherwise>
           		<h4 class="coupon__code">
					<input type="radio" id="asks" name="option" value="00" onchange="setDisplay()"  required="required"  checked="checked" > 
					<label for="asks"><span style="font-size:24px;">판매입찰</span></label>
					<c:if test="${not empty sellBids}">
					<input type="radio" id="check" name="option" value="10" onchange="setDisplay()" > 
					<label for="check"><span style="font-size:24px;">즉시판매</span></label>
					<input type="hidden" name="bids_idx" value="${sellBids.BIDS_IDX}">
					</c:if>
					<input type="hidden" name="type" value="sell">
	            </h4>
				<div class="checkout__input">
					<div id="price"  style="display:none;">
						<p style="font-size: 24px;">
						   	판매희망가격<span>*</span>
						 </p>
						<input type="text" class="ABprice" name="ABprice" placeholder="판매 희망가" style="color:black;" required="required"/>
					</div>
				</div>
			</c:otherwise>
			
			</c:choose>
<div id="orderDetail">			
            <h4 class="checkout__title">주문 상세</h4>
            <div class="row">
              <div class="col-lg-8">
                <div class="checkout__input">
                  <p>
                    Name<span>*</span>
                  </p>
                  <input id="name" type="text" name="ship_name" value="${memberVO.user_name}" required>
                </div>
              </div>
               <div class="col-lg-6">
                <div class="checkout__input">
                  <p>
                    Phone<span>*</span>
                  </p>
                  <input id="phone" type="text" name="phone_number" placeholder="-없이 숫자 11자리를 입력해주세요" >
                </div>
              </div>
              <div class="col-lg-6">
                <div class="checkout__input">
                  <p>
                    Email<span>*</span>
                  </p>
                  <input id="email" type="text" name="user_id" value="${memberVO.user_email} " required>
                </div>
              </div>
            </div>
            
            <%-- 구매의 경우에만 우편번호 입력 받기 --%>
           <c:if test="${type eq 'buy'}">
             <div class="checkout__input">
				<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>            
              <p>
                	우편번호<span>*</span>
              </p>
              <input type="text" id="sample4_postcode" name="sample4_postcode" placeholder="우편번호" required>
            </div>
           
            <div class="checkout__input">
              <p>
                도로명/지번 주소<span>*</span>
              </p>
              <input type="text" id="sample4_roadAddress" name="sample4_roadAddress" placeholder="도로명주소" required> 
              <input type="text" id="sample4_jibunAddress" name="sample4_jibunAddress" placeholder="지번주소" required>
            </div>
            <div class="checkout__input">
              <p>
                상세주소<span>*</span>
              </p>
              <input type="text" id="sample4_detailAddress" name="sample4_detailAddress" placeholder="상세주소" required>
            </div>
            <div class="checkout__input">
              <p>
               	참고항목
              </p>
              <input type="text" id="sample4_extraAddress" name="sample4_extraAddress" placeholder="참고항목">
            <span id="guide" style="color:#999;display:none"></span>
            </div>
          </c:if>
          <%-- 구매의 경우에만 우편번호 입력 받기 --%>
          
          </div>
</div>          
          <div class="col-lg-5 col-md-6">
            <div class="checkout__order">
              <h4 class="order__title">Your order</h4>
              <div class="checkout__order__products">
                <h5>Product</h5> <%-- <span>Total</span> --%>
              </div>
              <ul class="checkout__total__products">
                <li>${product.PRODUCT_NAME_EN}<br>
                	${product.PRODUCT_NAME_KOR}
                 </li>
               	<c:choose>
               		<c:when test="${buyAsks eq null && sellBids eq null}"> 
		                <li>SIZE : ${size}</li>
		                <input type="hidden" name="size" value="${size}">
		            </c:when>
		            <c:otherwise>  
        		        <c:if test="${sellBids eq null}">
		                	<li>SIZE : ${buyAsks.ASKS_SIZE_IDX}</li>
		                	<input type="hidden" name="size" value="${buyAsks.ASKS_SIZE_IDX}">
		                </c:if>  
		                <c:if test="${buyAsks eq null}">
		                	<li>SIZE : ${sellBids.BIDS_SIZE_IDX}</li>
		                	<input type="hidden" name="size" value="${sellBids.BIDS_SIZE_IDX}">
		                </c:if>
	                </c:otherwise>
                </c:choose>
              </ul>
              <ul class="checkout__total__all">
              <c:choose>
              	<c:when test="${buyAsks eq null && sellBids eq null}">
              		<c:set value="${product.PRODUCT_PRICE }" var="productPrice"/>
                </c:when>
                <c:when test="${sellBids eq null}">
              		<c:set value="${buyAsks.ASKS_PRICE}" var="productPrice"/>
                </c:when>
               <c:otherwise>
              		<c:set value="${sellBids.BIDS_PRICE}" var="productPrice"/>
               </c:otherwise>
               </c:choose>
               			<fmt:formatNumber var="formatNumPrice" value="${productPrice}"/>
	                	<li >Total <span id="totalPrice">${formatNumPrice}원</span></li>
              </ul>
              <input type="hidden" id="kakaoPrice" value="${productPrice}"/>
              <button onclick="submitOption()" type="button" class="site-btn">PLACE
                ORDER</button>
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>
</section>
<!-- Checkout Section End -->

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>

<script>   
    	
$(function() {    
	setDisplay();
}); 
    //구매입찰가 온오프
function setDisplay(){
        if($("#bids").is(':checked') || $('#asks').is(':checked')){
            $('#price').show();
        }else{
            $('#price').hide();
            $("input[name=ABprice]").val('');
            $("#totalPrice").text(addComma('${productPrice}')+'원');
        }
    }
	$(".ABprice").focusout(function() {
		$("#totalPrice").text(addComma($(".ABprice").val())+'원');	
	});
    

	
	//천단위 ,
 function addComma(value){
      value = value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
      return value; 
  }
	
    
 </script>
  <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="https://cdn.iamport.kr/v1/iamport.js"></script>
 <script>
 
 function checkInput(a,b,c,d) {
	 var phone = $("#phone").val();
	 var regPhone= /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
	 var phoneReg = regPhone.test(phone)
		if(!(a && b && c && d && phoneReg)) {
			return false;
		}
		return true;
	} 
 
function kakaoPay(name,phone,addr,email,price){
	

	alert("카카오페이로 간편 결제됩니다!! 본인 휴대폰을 준비해주세요!");
	
	var IMT = window.IMP;
	  IMP.init('imp12860401'); //가맹점 식별코드
	  IMP.request_pay({
	    pg: "kakaopay",
	    pay_method: "card",
	    merchant_uid : 'merchant_'+new Date().getTime(),
	    name :'결제테스트',
	    amount : price,
	    buyer_email : email,
	    buyer_name : name,
	    buyer_tel : phone,
	    buyer_addr : addr,
// 	    buyer_postcode : '000-000'
	  }, function (rsp) { // callback
	      if (rsp.success) {
	    	  
	          var msg = '결제가 완료되었습니다.';
	          alert(msg);
	          
	          document.orderConfirm.submit();

	      } else {
	    	  
	          var msg = '결제에 실패하였습니다.';
	          msg += '에러내용 : ' + rsp.error_msg;
	          alert(msg);
	      }
	  });
}


function submitOption () {
	var name = $("#name").val();
	var phone = $("#phone").val();
	var addr = $("#sample4_postcode").val() 
				+$("#sample4_roadAddress").val() 
				+ $("#sample4_extraAddress").val() 
				+ $("#sample4_extraAddress").val() 
				+ $("#sample4_extraAddress").val(); 
	var email = $("#email").val();
	
	var price = $("#kakaoPrice").val();
	
	var option = $("input[name=option]:checked").val();
	var option2 = '${checkType}';
	
	
	var checkData = checkInput(name,phone,addr,email);
	
	if(option == 10 && option2 == 'buy') {
		if(checkData) {
			kakaoPay(name, phone, addr, email, price);
		} else{
			alert("입력항목을 확인해주세요.");
			return false;
		}
		
	} else if (option == 00 && option2 == 'buy') {
		if(checkData) {
			document.orderConfirm.submit();
		} else {
			alert("입력항목을 확인해주세요.");
			return false;
		}
		
	} else if(option == 00 && option2 == 'sell') {
		document.orderConfirm.submit();
	} else if(option == 10 && option2 == 'sell'){
		document.orderConfirm.submit();
	}
	
	 }

	
	
/* 		if(checkData){ //항목중 무엇하나라도 안들어가있다면
			
			alert("입력항목을 확인해주세요.");
			return false;
			
		} else if(option == 10 && option2 == 'buy' ){ //즉시구매를 눌렀고, 옵션이 buy인경우 kakaoPay를 호출
			kakaoPay(name, phone, addr, email, price);
		} else if (option == 00 || option2 == 'sell'){ //입찰을 눌렀다면? 또는 옵션이 판매라면?
			document.orderConfirm.submit();
		}
		}
		 */
		 


</script>

