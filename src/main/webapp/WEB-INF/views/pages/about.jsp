<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-option">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="breadcrumb__text">
          <h4>About Us</h4>
          <div class="breadcrumb__links">
            <a href="${contextPath}/main.do">Home</a><span>About Us</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Breadcrumb Section End -->

<!-- About Section Begin -->
<section class="about spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="about__pic">
          <img src="${contextPath}/resources/img/about/about-us.jpg"
            alt="">
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-4 col-md-4 col-sm-6">
        <div class="about__item">
          <h4>Who We Are ?</h4>
          <p>우리의 임무는 세계에서 가장 탐나는 아이템에 가능한 가장 스마트한 방법으로 접근할 수 있도록 하는 것입니다. 가장 인기 있는 운동화를 사고팔 수 있습니다.</p>
        </div>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-6">
        <div class="about__item">
          <h4>Who We Do ?</h4>
          <p>판매되는 모든 품목은 당사의 전문 인증자 팀과 함께 독점적인 다단계 검증 프로세스를 거칩니다.</p>
        </div>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-6">
        <div class="about__item">
          <h4>Why Choose Us</h4>
          <p>시험판, 지역 제한 또는 "품절" 여부에 관계없이 200개 이상의 국가에서 수백만 명의 고객이 찾기 어렵고 탐내는 항목을 쉽게 확보할 수 있습니다.</p>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- About Section End -->

<!-- Testimonial Section Begin -->
<section class="testimonial">
  <div class="container-fluid">
    <div class="row">
      <div class="col-lg-6 p-0">
        <div class="testimonial__text">
          <span class="icon_quotations"></span>
          <p>“갑시다 집으로”</p>
          <div class="testimonial__author">
            <div class="testimonial__author__pic">
              <img
                src="${contextPath}/resources/img/about/testimonial-author.jpg"
                alt="">
            </div>
            <div class="testimonial__author__text">
              <h5>Augusta Schultz</h5>
              <p>Fashion Design</p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-6 p-0">
        <div class="testimonial__pic set-bg"
          data-setbg="${contextPath}/resources/img/about/testimonial-pic.jpg"></div>
      </div>
    </div>
  </div>
</section>
<!-- Testimonial Section End -->

<!-- Counter Section Begin -->
<section class="counter spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-md-6 col-sm-6">
        <div class="counter__item">
          <div class="counter__item__number">
            <h2 class="cn_num">102</h2>
          </div>
          <span>Our <br />Clients
          </span>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6">
        <div class="counter__item">
          <div class="counter__item__number">
            <h2 class="cn_num">30</h2>
          </div>
          <span>Total <br />Categories
          </span>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6">
        <div class="counter__item">
          <div class="counter__item__number">
            <h2 class="cn_num">102</h2>
          </div>
          <span>In <br />Country
          </span>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6">
        <div class="counter__item">
          <div class="counter__item__number">
            <h2 class="cn_num">98</h2>
            <strong>%</strong>
          </div>
          <span>Happy <br />Customer
          </span>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Counter Section End -->

<!-- Team Section Begin -->
<section class="team spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="section-title">
          <span>슈크림팀</span>
          <h2>우리팀을 만나보세요</h2>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-6 col-md-6 col-sm-6">
        <div class="team__item">
          <img src="${contextPath}/resources/img/about/team-1.jpg"
            alt="">
          <h4>김찬울</h4>
          <span>Fashion Design</span>
        </div>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-6">
        <div class="team__item">
          <img src="${contextPath}/resources/img/about/team-2.jpg"
            alt="">
          <h4>박인섭</h4>
          <span>C.E.O</span>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 col-sm-6">
        <div class="team__item">
          <img src="${contextPath}/resources/img/about/team-3.jpg"
            alt="">
          <h4>김정희</h4>
          <span>Manager</span>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 col-sm-6">
        <div class="team__item">
          <img src="${contextPath}/resources/img/about/team-5.jpg"
            alt="">
          <h4>이서훈</h4>
          <span>Delivery</span>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 col-sm-6">
        <div class="team__item">
          <img src="${contextPath}/resources/img/about/team-6.jpg"
            alt="">
          <h4>김동현</h4>
          <span>Delivery</span>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Team Section End -->

<!-- Client Section Begin -->
<section class="clients spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="section-title">
          <span>Partner</span>
          <h2>글로벌 파트너사</h2>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-3 col-md-4 col-sm-4 col-6">
        <a href="#" class="client__item"><img
          src="${contextPath}/resources/img/clients/client-1.png" alt=""></a>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-4 col-6">
        <a href="#" class="client__item"><img
          src="${contextPath}/resources/img/clients/client-2.png" alt=""></a>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-4 col-6">
        <a href="#" class="client__item"><img
          src="${contextPath}/resources/img/clients/client-3.png" alt=""></a>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-4 col-6">
        <a href="#" class="client__item"><img
          src="${contextPath}/resources/img/clients/client-4.png" alt=""></a>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-4 col-6">
        <a href="#" class="client__item"><img
          src="${contextPath}/resources/img/clients/client-5.png" alt=""></a>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-4 col-6">
        <a href="#" class="client__item"><img
          src="${contextPath}/resources/img/clients/client-6.png" alt=""></a>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-4 col-6">
        <a href="#" class="client__item"><img
          src="${contextPath}/resources/imgclients/client-7.png" alt=""></a>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-4 col-6">
        <a href="#" class="client__item"><img
          src="${contextPath}/resources/imgclients/client-8.png" alt=""></a>
      </div>
    </div>
  </div>
</section>
<!-- Client Section End -->
