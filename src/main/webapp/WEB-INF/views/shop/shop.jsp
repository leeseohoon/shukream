<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="likeList" value="${likeList}" />


<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-option">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="breadcrumb__text">
          <h4>Shop</h4>
          <div class="breadcrumb__links">
            <a href="${contextPath}/main.do">Home</a> <span>Shop</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Shop Section Begin -->
<section class="shop spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-3">
        <div class="shop__sidebar">
<!--           <div class="shop__sidebar__search"> -->
<!--             <form action="#"> -->
<!--               <input type="text" placeholder="Search..."> -->
<!--               <button type="submit"> -->
<!--                 <span class="icon_search"></span> -->
<!--               </button> -->
<!--             </form> -->
<!--           </div> -->
          <div class="shop__sidebar__accordion">
            <div class="accordion" id="accordionExample">
              <div class="card">
                <div class="card-heading">
                  <a data-toggle="collapse" data-target="#collapseOne">Categories</a>
                </div>
                <div id="collapseOne" class="collapse show"
                  data-parent="#accordionExample">
                  <div class="card-body">
                    <div class="shop__sidebar__categories">
                      <ul>
                        <li><a href="?">All</a></li>
                        <li><a href="?opt=category&division=0">Sneakers</a></li>
                        <li><a href="?opt=category&division=1">Slipper</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card">
                <div class="card-heading">
                  <a data-toggle="collapse" data-target="#collapseTwo">Branding</a>
                </div>
                <div id="collapseTwo" class="collapse show"
                  data-parent="#accordionExample">
                  <div class="card-body">
                    <div class="shop__sidebar__brand">
                      <ul>
                        <li><a href="?opt=brand&division=Nike">Nike</a></li>
                        <li><a href="?opt=brand&division=Adidas">Adidas</a></li>
                        <li><a href="?opt=brand&division=Jordan">Jordan</a></li>
                        <li><a href="?opt=brand&division=New Balance">New Balance</a></li>
                        <li><a href="?opt=brand&division=Birkenstock">Birkenstock</a></li>
                        <li><a href="?opt=brand&division=Hermes">Hermes</a></li>
                        <li><a href="?opt=brand&division=Chanel">Chanel</a></li>
                        <li><a href="?opt=brand&division=Crocs">Crocs</a></li>
                        <li><a href="?opt=brand&division=Salomon">Salomon</a></li>
                        <li><a href="?opt=brand&division=Oofos">Oofos</a></li>
                        <li><a href="?opt=brand&division=Asics">Asics</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            <!--   <div class="card">
                <div class="card-heading">
                  <a data-toggle="collapse" data-target="#collapseThree">Filter
                    Price</a>
                </div>
                <div id="collapseThree" class="collapse show"
                  data-parent="#accordionExample">
                  <div class="card-body">
                    <div class="shop__sidebar__price">
                      <ul>
                        <li><a href="#">$0.00 - $50.00</a></li>
                        <li><a href="#">$50.00 - $100.00</a></li>
                        <li><a href="#">$100.00 - $150.00</a></li>
                        <li><a href="#">$150.00 - $200.00</a></li>
                        <li><a href="#">$200.00 - $250.00</a></li>
                        <li><a href="#">250.00+</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div> -->
              <div class="card">
                <div class="card-heading">
                  <a data-toggle="collapse" data-target="#collapseFour">Size</a>
                </div>
                <div id="collapseFour" class="collapse show"
                  data-parent="#accordionExample">
                  <div class="card-body">
                    <div class="shop__sidebar__size">
                      <label for="220 ">220 <input type="radio"
                        id="220 ">
                      </label> <label for="225">225 <input type="radio"
                        id="225">
                      </label> <label for="230">230 <input type="radio"
                        id="230">
                      </label> <label for="235">235 <input type="radio"
                        id="235">
                      </label> <label for="240">240 <input type="radio"
                        id="240">
                      </label> <label for="245">245 <input type="radio"
                        id="245">
                      </label> <label for="250">250 <input type="radio"
                        id="250"></label> 
                        <label for="255">255 <input type="radio" id="255"></label>
                        <label for="260">260 <input type="radio" id="260"></label>
                        <label for="265">265 <input type="radio" id="265"></label>
                        <label for="270">270 <input type="radio" id="270"></label>
                        <label for="275">275 <input type="radio" id="275"></label>
                        <label for="280">280 <input type="radio" id="280"></label>
                        <label for="285">285 <input type="radio" id="285"></label>
                        <label for="290">290 <input type="radio" id="290"></label>
                        <label for="295">295 <input type="radio" id="295"></label>
                        <label for="300">300 <input type="radio" id="300"></label>
                    </div>
                  </div>
                </div>
              </div>
              <!-- <div class="card">
                <div class="card-heading">
                  <a data-toggle="collapse" data-target="#collapseFive">Colors</a>
                </div>
                <div id="collapseFive" class="collapse show"
                  data-parent="#accordionExample">
                  <div class="card-body">
                    <div class="shop__sidebar__color">
                      <label class="c-1" for="sp-1"> <input
                        type="radio" id="sp-1">
                      </label> <label class="c-2" for="sp-2"> <input
                        type="radio" id="sp-2">
                      </label> <label class="c-3" for="sp-3"> <input
                        type="radio" id="sp-3">
                      </label> <label class="c-4" for="sp-4"> <input
                        type="radio" id="sp-4">
                      </label> <label class="c-5" for="sp-5"> <input
                        type="radio" id="sp-5">
                      </label> <label class="c-6" for="sp-6"> <input
                        type="radio" id="sp-6">
                      </label> <label class="c-7" for="sp-7"> <input
                        type="radio" id="sp-7">
                      </label> <label class="c-8" for="sp-8"> <input
                        type="radio" id="sp-8">
                      </label> <label class="c-9" for="sp-9"> <input
                        type="radio" id="sp-9">
                      </label>
                    </div>
                  </div>
                </div>
              </div> -->
<!--               <div class="card"> -->
<!--                 <div class="card-heading"> -->
<!--                   <a data-toggle="collapse" data-target="#collapseSix">Tags</a> -->
<!--                 </div> -->
<!--                 <div id="collapseSix" class="collapse show" -->
<!--                   data-parent="#accordionExample"> -->
<!--                   <div class="card-body"> -->
<!--                     <div class="shop__sidebar__tags"> -->
<!--                       <a href="#">Product</a> <a href="#">Bags</a> <a -->
<!--                         href="#">Shoes</a> <a href="#">Fashio</a> <a -->
<!--                         href="#">Clothing</a> <a href="#">Hats</a> <a -->
<!--                         href="#">Accessories</a> -->
<!--                     </div> -->
<!--                   </div> -->
<!--                 </div> -->
<!--               </div> -->
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-9">
        <div class="shop__product__option">
          <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
              <div class="shop__product__option__left">
                <p>Showing ${pagination.getStartIndex()} –
                <c:choose>
                	<c:when test="${pagination.currentPage eq pagination.totalPage}">
                		${totalCount}
                	</c:when>
                	<c:otherwise>
                		${pagination.getEndIndex()}
                	</c:otherwise>
                </c:choose>
                  of ${totalCount} results</p>
              </div>
            </div>
<!--             <div class="col-lg-6 col-md-6 col-sm-6"> -->
<!--               <div class="shop__product__option__right"> -->
<!--                 <p>Sort by Price:</p> -->
<!--                 <select> -->
<!--                   <option value="opt=price&division=">Low To High</option> -->
<!--                   <option value="">$0 - $55</option> -->
<!--                   <option value="">$55 - $100</option> -->
<!--                 </select> -->
<!--               </div> -->
<!--             </div> -->
          </div>
        </div>
        <div class="row">
		<c:forEach var="product" items="${products}" varStatus="">
        <c:set var="product_name_en" value="${product.PRODUCT_NAME_EN}"/>
        <%-- 여기서부터 --%>
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
<%--             <div class="product__item" style="cursor: pointer;"onclick="location.href='shopDetails.do?product_id=${product.PRODUCT_ID}'"> --%>
            <c:choose>
            	<c:when test="${product.CATEGORY eq 0}">
            	 <div class="product__item__pic set-bg"
                data-setbg="${contextPath}/resources/img/product/sneakers/${product.IMG_FILE}">
                </c:when>
                <c:otherwise>
			 <div class="product__item__pic set-bg"
                data-setbg="${contextPath}/resources/img/product/slipper/${product.IMG_FILE}">
                </c:otherwise>
			</c:choose>
                <ul class="product__hover">
                 
                  <li>               		
              			<a id="heartBtn" onclick="javascript:heartBtn('${product.PRODUCT_ID}',
              														  '${product.IMG_FILE}',
																	  '${product.PRODUCT_NAME_EN}',              														  
																	  '${product.PRODUCT_NAME_KOR}',              														  	
																	  '${product.PRODUCT_PRICE}',              														  	
																	  '${email}'             														  	
																		);">
             <c:choose>
            	<c:when test="${fn:contains(likeList,product_name_en)}">
         			<img id="heartImg${product.PRODUCT_ID}" src="${contextPath}/resources/img/icon/heart1.png" alt=""> 
                </c:when>
                <c:otherwise>
         			<img id="heartImg${product.PRODUCT_ID}" src="${contextPath}/resources/img/icon/heart.png" alt=""> 
                </c:otherwise>
				
			 </c:choose>  			
               
               			</a>                  
           		  </li>
                 
                  <li><a href="shopDetails.do?product_id=${product.PRODUCT_ID}"><img
                      src="${contextPath}/resources/img/icon/search.png"
                      alt=""></a></li>
                </ul>
              </div>
              <div class="product__item__text">
	                <h6>${product.PRODUCT_NAME_EN}</h6>
	                <span style="font-size: 12px;">${product.PRODUCT_NAME_KOR}</span>
	                <a class="add-cart">관심상품 등록: ♥ </a>
                <fmt:formatNumber value="${product.PRODUCT_PRICE}" type="number" var="product_price" />
                <h5>${product_price}원</h5>
              </div>
            </div>
          </div>
          </c:forEach>
          <%-- 여기까지 한줄 --%>
          
          <%-- 원본 -- %>
          <%-- <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
              <div class="product__item__pic set-bg"
                data-setbg="${contextPath}/resources/img/product/product-2.jpg">
                <ul class="product__hover">
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/heart.png"
                      alt=""></a></li>
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/compare.png"
                      alt=""> <span>Compare</span></a></li>
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/search.png"
                      alt=""></a></li>
                </ul>
              </div>
              <div class="product__item__text">
                <h6>Piqué Biker Jacket</h6>
                <a href="#" class="add-cart">+ Add To Cart</a>
                <div class="rating">
                  <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>$67.24</h5>
                <div class="product__color__select">
                  <label for="pc-4"> <input type="radio"
                    id="pc-4">
                  </label> <label class="active black" for="pc-5"> <input
                    type="radio" id="pc-5">
                  </label> <label class="grey" for="pc-6"> <input
                    type="radio" id="pc-6">
                  </label>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item sale">
              <div class="product__item__pic set-bg"
                data-setbg="${contextPath}/resources/img/product/product-3.jpg">
                <span class="label">Sale</span>
                <ul class="product__hover">
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/heart.png"
                      alt=""></a></li>
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/compare.png"
                      alt=""> <span>Compare</span></a></li>
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/search.png"
                      alt=""></a></li>
                </ul>
              </div>
              <div class="product__item__text">
                <h6>Multi-pocket Chest Bag</h6>
                <a href="#" class="add-cart">+ Add To Cart</a>
                <div class="rating">
                  <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>$43.48</h5>
                <div class="product__color__select">
                  <label for="pc-7"> <input type="radio"
                    id="pc-7">
                  </label> <label class="active black" for="pc-8"> <input
                    type="radio" id="pc-8">
                  </label> <label class="grey" for="pc-9"> <input
                    type="radio" id="pc-9">
                  </label>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
              <div class="product__item__pic set-bg"
                data-setbg="${contextPath}/resources/img/product/product-4.jpg">
                <ul class="product__hover">
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/heart.png"
                      alt=""></a></li>
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/compare.png"
                      alt=""> <span>Compare</span></a></li>
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/search.png"
                      alt=""></a></li>
                </ul>
              </div>
              <div class="product__item__text">
                <h6>Diagonal Textured Cap</h6>
                <a href="#" class="add-cart">+ Add To Cart</a>
                <div class="rating">
                  <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>$60.9</h5>
                <div class="product__color__select">
                  <label for="pc-10"> <input type="radio"
                    id="pc-10">
                  </label> <label class="active black" for="pc-11"> <input
                    type="radio" id="pc-11">
                  </label> <label class="grey" for="pc-12"> <input
                    type="radio" id="pc-12">
                  </label>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item sale">
              <div class="product__item__pic set-bg"
                data-setbg="${contextPath}/resources/img/product/product-6.jpg">
                <span class="label">Sale</span>
                <ul class="product__hover">
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/heart.png"
                      alt=""></a></li>
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/compare.png"
                      alt=""> <span>Compare</span></a></li>
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/search.png"
                      alt=""></a></li>
                </ul>
              </div>
              <div class="product__item__text">
                <h6>Ankle Boots</h6>
                <a href="#" class="add-cart">+ Add To Cart</a>
                <div class="rating">
                  <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>$98.49</h5>
                <div class="product__color__select">
                  <label for="pc-16"> <input type="radio"
                    id="pc-16">
                  </label> <label class="active black" for="pc-17"> <input
                    type="radio" id="pc-17">
                  </label> <label class="grey" for="pc-18"> <input
                    type="radio" id="pc-18">
                  </label>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
              <div class="product__item__pic set-bg"
                data-setbg="${contextPath}/resources/img/product/product-7.jpg">
                <ul class="product__hover">
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/heart.png"
                      alt=""></a></li>
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/compare.png"
                      alt=""> <span>Compare</span></a></li>
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/search.png"
                      alt=""></a></li>
                </ul>
              </div>
              <div class="product__item__text">
                <h6>T-shirt Contrast Pocket</h6>
                <a href="#" class="add-cart">+ Add To Cart</a>
                <div class="rating">
                  <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>$49.66</h5>
                <div class="product__color__select">
                  <label for="pc-19"> <input type="radio"
                    id="pc-19">
                  </label> <label class="active black" for="pc-20"> <input
                    type="radio" id="pc-20">
                  </label> <label class="grey" for="pc-21"> <input
                    type="radio" id="pc-21">
                  </label>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
              <div class="product__item__pic set-bg"
                data-setbg="${contextPath}/resources/img/product/product-8.jpg">
                <ul class="product__hover">
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/heart.png"
                      alt=""></a></li>
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/compare.png"
                      alt=""> <span>Compare</span></a></li>
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/search.png"
                      alt=""></a></li>
                </ul>
              </div>
              <div class="product__item__text">
                <h6>Basic Flowing Scarf</h6>
                <a href="#" class="add-cart">+ Add To Cart</a>
                <div class="rating">
                  <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>$26.28</h5>
                <div class="product__color__select">
                  <label for="pc-22"> <input type="radio"
                    id="pc-22">
                  </label> <label class="active black" for="pc-23"> <input
                    type="radio" id="pc-23">
                  </label> <label class="grey" for="pc-24"> <input
                    type="radio" id="pc-24">
                  </label>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
              <div class="product__item__pic set-bg"
                data-setbg="${contextPath}/resources/img/product/product-9.jpg">
                <ul class="product__hover">
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/heart.png"
                      alt=""></a></li>
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/compare.png"
                      alt=""> <span>Compare</span></a></li>
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/search.png"
                      alt=""></a></li>
                </ul>
              </div>
              <div class="product__item__text">
                <h6>Piqué Biker Jacket</h6>
                <a href="#" class="add-cart">+ Add To Cart</a>
                <div class="rating">
                  <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>$67.24</h5>
                <div class="product__color__select">
                  <label for="pc-25"> <input type="radio"
                    id="pc-25">
                  </label> <label class="active black" for="pc-26"> <input
                    type="radio" id="pc-26">
                  </label> <label class="grey" for="pc-27"> <input
                    type="radio" id="pc-27">
                  </label>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item sale">
              <div class="product__item__pic set-bg"
                data-setbg="${contextPath}/resources/img/product/product-10.jpg">
                <span class="label">Sale</span>
                <ul class="product__hover">
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/heart.png"
                      alt=""></a></li>
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/compare.png"
                      alt=""> <span>Compare</span></a></li>
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/search.png"
                      alt=""></a></li>
                </ul>
              </div>
              <div class="product__item__text">
                <h6>Multi-pocket Chest Bag</h6>
                <a href="#" class="add-cart">+ Add To Cart</a>
                <div class="rating">
                  <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>$43.48</h5>
                <div class="product__color__select">
                  <label for="pc-28"> <input type="radio"
                    id="pc-28">
                  </label> <label class="active black" for="pc-29"> <input
                    type="radio" id="pc-29">
                  </label> <label class="grey" for="pc-30"> <input
                    type="radio" id="pc-30">
                  </label>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
              <div class="product__item__pic set-bg"
                data-setbg="${contextPath}/resources/img/product/product-11.jpg">
                <ul class="product__hover">
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/heart.png"
                      alt=""></a></li>
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/compare.png"
                      alt=""> <span>Compare</span></a></li>
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/search.png"
                      alt=""></a></li>
                </ul>
              </div>
              <div class="product__item__text">
                <h6>Diagonal Textured Cap</h6>
                <a href="#" class="add-cart">+ Add To Cart</a>
                <div class="rating">
                  <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>$60.9</h5>
                <div class="product__color__select">
                  <label for="pc-31"> <input type="radio"
                    id="pc-31">
                  </label> <label class="active black" for="pc-32"> <input
                    type="radio" id="pc-32">
                  </label> <label class="grey" for="pc-33"> <input
                    type="radio" id="pc-33">
                  </label>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item sale">
              <div class="product__item__pic set-bg"
                data-setbg="${contextPath}/resources/img/product/product-12.jpg">
                <span class="label">Sale</span>
                <ul class="product__hover">
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/heart.png"
                      alt=""></a></li>
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/compare.png"
                      alt=""> <span>Compare</span></a></li>
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/search.png"
                      alt=""></a></li>
                </ul>
              </div>
              <div class="product__item__text">
                <h6>Ankle Boots</h6>
                <a href="#" class="add-cart">+ Add To Cart</a>
                <div class="rating">
                  <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>$98.49</h5>
                <div class="product__color__select">
                  <label for="pc-34"> <input type="radio"
                    id="pc-34">
                  </label> <label class="active black" for="pc-35"> <input
                    type="radio" id="pc-35">
                  </label> <label class="grey" for="pc-36"> <input
                    type="radio" id="pc-36">
                  </label>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
              <div class="product__item__pic set-bg"
                data-setbg="${contextPath}/resources/img/product/product-13.jpg">
                <ul class="product__hover">
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/heart.png"
                      alt=""></a></li>
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/compare.png"
                      alt=""> <span>Compare</span></a></li>
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/search.png"
                      alt=""></a></li>
                </ul>
              </div>
              <div class="product__item__text">
                <h6>T-shirt Contrast Pocket</h6>
                <a href="#" class="add-cart">+ Add To Cart</a>
                <div class="rating">
                  <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>$49.66</h5>
                <div class="product__color__select">
                  <label for="pc-37"> <input type="radio"
                    id="pc-37">
                  </label> <label class="active black" for="pc-38"> <input
                    type="radio" id="pc-38">
                  </label> <label class="grey" for="pc-39"> <input
                    type="radio" id="pc-39">
                  </label>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
              <div class="product__item__pic set-bg"
                data-setbg="${contextPath}/resources/img/product/product-14.jpg">
                <ul class="product__hover">
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/heart.png"
                      alt=""></a></li>
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/compare.png"
                      alt=""> <span>Compare</span></a></li>
                  <li><a href="#"><img
                      src="${contextPath}/resources/img/icon/search.png"
                      alt=""></a></li>
                </ul>
              </div>
              <div class="product__item__text">
                <h6>Basic Flowing Scarf</h6>
                <a href="#" class="add-cart">+ Add To Cart</a>
                <div class="rating">
                  <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>$26.28</h5>
                <div class="product__color__select">
                  <label for="pc-40"> <input type="radio"
                    id="pc-40">
                  </label> <label class="active black" for="pc-41"> <input
                    type="radio" id="pc-41">
                  </label> <label class="grey" for="pc-42"> <input
                    type="radio" id="pc-42">
                  </label>
                </div>
              </div>
            </div>
          </div> --%>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <div class="product__pagination">
            	<c:if test="${pagination.hasPrevBlock()}">
              		<a class="" href="?page=${pagination.startPage-1}&opt=${opt}&division=${division}">&laquo;</a> 
            	</c:if>
            	<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="pageNumber">
            		<c:choose>
            			<c:when test="${pageNumber eq pagination.currentPage}">
            				<a class="active" href="?page=${pageNumber}&opt=${opt}&division=${division}">${pageNumber}</a>
            			</c:when>
            			<c:otherwise>
            				<a href="?page=${pageNumber}&opt=${opt}&division=${division}">${pageNumber}</a>
            			</c:otherwise>
            		</c:choose>
            	</c:forEach>
            	<c:if test="${pagination.hasNextBlock()}">
            		<a href="?page=${pagination.endPage+1}&opt=${opt}&division=${division}">&raquo;</a>
            	</c:if>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Shop Section End -->

	<script type="text/javascript">
	
	    function heartBtn(PRODUCT_ID,IMG_FILE,PRODUCT_NAME_EN,PRODUCT_NAME_KOR,PRODUCT_PRICE,email){
 	        if(email == ""){
	          alert("로그인을 해주세요");
 	        } else{
	          $.ajax({
	                  url: getContextPath()+"/favorites/favoritesLike.do",
	                  async : true,
	                  type : 'POST',
	                  data : {
 	                	  		PRODUCT_ID : PRODUCT_ID,	                	  		
 	                	  		IMG_FILE : IMG_FILE,
	                	  		PRODUCT_NAME_EN : PRODUCT_NAME_EN,
 	                	  		PRODUCT_NAME_KOR : PRODUCT_NAME_KOR,
	                	  		PRODUCT_PRICE : PRODUCT_PRICE,
								email : email
	                  		},
	                  success : function(data) {
	                 	
	                 	if ( data == 0 ) {
                        	
	                 		$("#heartImg"+PRODUCT_ID).attr("src","${contextPath}/resources/img/icon/heart.png");
                        
	                 	} else if (data == 1) {
	                        
	                 		$("#heartImg"+PRODUCT_ID).attr("src","${contextPath}/resources/img/icon/heart1.png"); 
                        }
	                  
	                  }
	            });
	        }
	      }
	    
	    function getContextPath() {
	    	var hostIndex = location.href.indexOf(location.host) + location.host.length;
	    	
	    	return location.href.substring(hostIndex, location.href.indexOf('/',hostIndex + 1));
	    };
	
	</script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>