<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap" rel="stylesheet" />

  <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />


  <!-- Carousel -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css">
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

  <!-- Custom StyleSheet -->
  <link rel="stylesheet" href="css/styles.css" />

  <title>Pet Mart | Cửa hàng thú cưng và phụ kiện cho thú cưng</title>
  <base href="${pageContext.servletContext.contextPath}/">
</head>

<body>
	<%@ include file="/WebContent/views/header_nav.jsp" %>
    <!-- Hero -->
    <div class="hero">
      <div class="glide" id="glide_1">
        <div class="glide__track" data-glide-el="track">
          <ul class="glide__slides">
            <li class="glide__slide glide__slide1">
              <div class="hero__center">
                <div class="hero__left">
                  <span class="">New Inspiration 2020</span>
                  <h1 class="">PHONES MADE FOR YOU!</h1>
                  <p>Trending from mobile and headphone style collection</p>
                  <a href="#"><button class="hero__btn">SHOP NOW</button></a>
                </div>
                <div class="hero__right">
                  <!-- <div class="hero__img-container">
                    <img class="banner_01" src="./images/" alt="banner2" />
                  </div> -->
                </div>
              </div>
            </li>
            <li class="glide__slide glide__slide2">
              <div class="hero__center">
                <div class="hero__left">
                  <span>New Inspiration 2020</span>
                  <h1>PHONES MADE FOR YOU!</h1>
                  <p>Trending from mobile and headphone style collection</p>
                  <a href="#"><button class="hero__btn">SHOP NOW</button></a>
                </div>
                <div class="hero__right">
                  <img class="banner_02" src="./images/banner_02.png" alt="banner2" />
                </div>
              </div>
            </li>
          </ul>
        </div>
        <div class="glide__bullets" data-glide-el="controls[nav]">
          <button class="glide__bullet" data-glide-dir="=0"></button>
          <button class="glide__bullet" data-glide-dir="=1"></button>
        </div>

        <div class="glide__arrows" data-glide-el="controls">
          <button class="glide__arrow glide__arrow--left" data-glide-dir="<">
            <svg>
              <use xlink:href="./images/sprite.svg#icon-arrow-left2"></use>
            </svg>
          </button>
          <button class="glide__arrow glide__arrow--right" data-glide-dir=">">
            <svg>
              <use xlink:href="./images/sprite.svg#icon-arrow-right2"></use>
            </svg>
          </button>
        </div>
      </div>
    </div>
  

  <!-- Main -->
  <main id="main">
    <div class="container">
      <!-- Collection -->
      <section id="collection" class="section collection">
        <div class="collection__container" data-aos="fade-up" data-aos-duration="1200">
          <div class="collection__box">
            <div class="img__container">
              <img class="collection_02" src="./images/corgi.png" alt="">
            </div>
            <div class="collection__content">
              <div class="collection__data">
                <span></span>
                <h1>CORGI</h1>
                <a href="#shop">SHOP NOW</a>
              </div>
            </div>
          </div>
          <div class="collection__box">
            <div class="img__container">
              <img class="collection_01" src="./images/thuc-an.png" alt="">
            </div>
            <div class="collection__content">
              <div class="collection__data">
                <span></span>
                <h1>GANADOR</h1>
                <a href="#">SHOP NOW</a>
              </div>
            </div>
          </div>
      </section>

      <!-- Latest Products -->
      <section class="section latest__products" id="latest">
        <div class="title__container">
          <div class="section__title active" data-id="Latest Products">
            <span class="dot"></span>
            <h1 class="primary__title">Sản phẩm mới nhất</h1>
          </div>
        </div>
        <div class="container" data-aos="fade-up" data-aos-duration="1200">
          <div class="glide" id="glide_2">
            <div class="glide__track" data-glide-el="track">
              <ul class="glide__slides latest-center">
                
               
                <c:forEach var="listAcc" items="${listAcc }">
                <li class="glide__slide">
                  <div class="product">
                    <div class="product__header">
                      <img style="border-radius: 10px;" src="${listAcc.getImgs().get(0).getImgAvartar() }" alt="product">
                    </div>
                    <div class="product__footer">
                      <h3>${listAcc.getName() }</h3>
                      <div class="rating">
                        <svg>
                          <use xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="images/sprite.svg#icon-star-empty"></use>
                        </svg>
                        <svg>
                          <use xlink:href="images/sprite.svg#icon-star-empty"></use>
                        </svg>
                        <svg>
                          <use xlink:href="images/sprite.svg#icon-star-empty"></use>
                        </svg>
                      </div>
                      <div  class="product__price">
                        <h4 class="price">${listAcc.getDisplayPrice(1) }</h4>
                      </div>
                    </div>
                    <ul>
                      <li>
                        <a data-tip="Quick View" data-place="left" href="acc-detail/${listAcc.getId() }">
                          <svg>
                            <use xlink:href="images/sprite.svg#icon-eye"></use>
                          </svg>
                        </a>
                      </li>
                    </ul>
                  </div>
                </li>
                </c:forEach>
              </ul>
            </div>

            <div class="glide__arrows" data-glide-el="controls">
              <button class="glide__arrow glide__arrow--left" data-glide-dir="<">
                <svg>
                  <use xlink:href="images/sprite.svg#icon-arrow-left2"></use>
                </svg>
              </button>
              <button class="glide__arrow glide__arrow--right" data-glide-dir=">">
                <svg>
                  <use xlink:href="images/sprite.svg#icon-arrow-right2"></use>
                </svg>
              </button>
            </div>
          </div>
        </div>
      </section>

      <section class="category__section section" id="category">
        <div class="tab__list">
          <div class="title__container tabs">
            <div class="section__titles category__titles ">
              <div class="section__title filter-btn active" data-id="All Products">
                <span class="dot"></span>
                <h1 class="primary__title">Tất cả sản phẩm</h1>
              </div>
            </div>
            <div class="section__titles">
              <div class="section__title filter-btn" data-id="Trending Products">
                <span class="dot"></span>
                <h1 class="primary__title">Sản phẩm hot</h1>
              </div>
            </div>

            <div class="section__titles">
              <div class="section__title filter-btn" data-id="Special Products">
                <span class="dot"></span>
                <h1 class="primary__title">Sản phẩm đặc biệt</h1>
              </div>
            </div>
          </div>
        </div>
        <div class="category__container" data-aos="fade-up" data-aos-duration="1200">
          <div class="category__center">
          	   <c:forEach var="list" items="${list }">
               
                  <div class="product">
                    <div class="product__header">
                      <img style="border-radius: 10px;"  src="${list.getImgs().get(0).getImgAvartar() }" alt="product">
                    </div>
                    <div class="product__footer">
                      <h3>${list.getPetName() }</h3>
                      <div class="rating">
                        <svg>
                          <use xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="images/sprite.svg#icon-star-empty"></use>
                        </svg>
                        <svg>
                          <use xlink:href="images/sprite.svg#icon-star-empty"></use>
                        </svg>
                        <svg>
                          <use xlink:href="images/sprite.svg#icon-star-empty"></use>
                        </svg>
                      </div>
                      <div class="product__price">
                        <h4 class="price">${list.getDisplayPrice(1) }</h4>
                      </div>
                    </div>
                    <ul>
                      <li>
                        <a data-tip="Quick View" data-place="left" href="pet-detail/${list.getId() }">
                          <svg>
                            <use xlink:href="images/sprite.svg#icon-eye"></use>
                          </svg>
                        </a>
                      </li>
                    </ul>
                  </div>
                </c:forEach>
          </div>
        </div>
    </div>
    </section>

    <!-- Facility Section -->
    <section class="facility__section section" id="facility">
      <div class="container">
        <div class="facility__contianer">
          <div class="facility__box">
            <div class="facility-img__container">
              <svg>
                <use xlink:href="images/sprite.svg#icon-airplane"></use>
              </svg>
            </div>
            <p>VẬN CHUYỂN KHU VỰC HÀ NỘI</p>
          </div>

          <div class="facility__box">
            <div class="facility-img__container">
              <svg>
                <use xlink:href="images/sprite.svg#icon-credit-card-alt"></use>
              </svg>
            </div>
            <p>HOÀN TIỀN 100%</p>
          </div>

          <div class="facility__box">
            <div class="facility-img__container">
              <svg>
                <use xlink:href="images/sprite.svg#icon-credit-card"></use>
              </svg>
            </div>
            <p>NHIỀU ƯU ĐÃI LỠN</p>
          </div>

          <div class="facility__box">
            <div class="facility-img__container">
              <svg>
                <use xlink:href="images/sprite.svg#icon-headphones"></use>
              </svg>
            </div>
            <p>CHĂM SÓC TẬN TÌNH</p>
          </div>
        </div>
      </div>
    </section>
   

    <!-- Testimonial Section -->
    <section class="section testimonial" id="testimonial">
      <div class="testimonial__container">
        <div class="glide" id="glide_4">
          <div class="glide__track" data-glide-el="track">
            <ul class="glide__slides">
              <li class="glide__slide">
                <div class="testimonial__box">
                  <div class="client__image">
                    <img src="images/profile1.jpg" alt="profile">
                  </div>
                  <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Recusandae fuga hic nesciunt tempore
                    quibusdam consequatur eligendi unde officia ex quae.ipsum dolor sit amet consectetur adipisicing
                    elit. Recusandae fuga hic nesciunt tempore
                    quibusdam consequatur eligendi unde officia ex quae.</p>
                  <div class="client__info">
                    <h3>John Smith</h3>
                    <span>Founder at Apple</span>
                  </div>
                </div>
              </li>
              <li class="glide__slide">
                <div class="testimonial__box">
                  <div class="client__image">
                    <img src="images/profile2.jpg" alt="profile">
                  </div>
                  <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Recusandae fuga hic nesciunt tempore
                    quibusdam consequatur
                    eligendi unde officia ex quae.ipsum dolor sit amet consectetur adipisicing elit. Recusandae fuga hic
                    nesciunt tempore
                    quibusdam consequatur eligendi unde officia ex quae.adipisicing elit. Recusandae fuga hic
                    nesciunt tempore
                    quibusdam consequatur eligendi unde officia ex quae.</p>
                  <div class="client__info">
                    <h3>John Smith</h3>
                    <span>Founder at Apple</span>
                  </div>
                </div>
              </li>
            </ul>
          </div>

          <div class="glide__bullets" data-glide-el="controls[nav]">
            <button class="glide__bullet" data-glide-dir="=0"></button>
            <button class="glide__bullet" data-glide-dir="=1"></button>
          </div>
        </div>
      </div>
    </section>
    
     <!--New Section  -->
    <section class="section news" id="news">
      <div class="container">
        <div class="title__container">
          <div class="section__titles">
            <div class="section__title active">
              <span class="dot"></span>
              <h1 class="primary__title">Chia sẻ từ khách hàng</h1>
            </div>
          </div>
        </div>
        <div class="news__container">
          <div class="glide" id="glide_5">
            <div class="glide__track" data-glide-el="track">
              <ul class="glide__slides">
                <li class="glide__slide">
                  <div class="new__card">
                    <div class="card__header">
                      <img src="./images/news1.jpg" alt="">
                    </div>
                    <div class="card__footer">
                      <h3>Styling White Shirts After A Cool Day</h3>
                      <span>By <strong>Admin</strong></span>
                      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo praesentium, numquam non
                        provident rem sed minus natus unde vel modi!</p>
                    </div>
                  </div>
                </li>
                <li class="glide__slide">
                  <div class="new__card">
                    <div class="card__header">
                      <img src="./images/news2.jpg" alt="">
                    </div>
                    <div class="card__footer">
                      <h3>Styling White Shirts After A Cool Day</h3>
                      <span>By <strong>Admin</strong></span>
                      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo praesentium, numquam non
                        provident rem sed minus natus unde vel modi!</p>
                    </div>
                  </div>
                </li>
                <li class="glide__slide">
                  <div class="new__card">
                    <div class="card__header">
                      <img src="./images/news3.jpg" alt="">
                    </div>
                    <div class="card__footer">
                      <h3>Styling White Shirts After A Cool Day</h3>
                      <span>By <strong>Admin</strong></span>
                      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo praesentium, numquam non
                        provident rem sed minus natus unde vel modi!</p>
                    </div>
                  </div>
                </li>
                <li class="glide__slide">
                  <div class="new__card">
                    <div class="card__header">
                      <img src="./images/news4.jpg" alt="">
                    </div>
                    <div class="card__footer">
                      <h3>Styling White Shirts After A Cool Day</h3>
                      <span>By <strong>Admin</strong></span>
                      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo praesentium, numquam non
                        provident rem sed minus natus unde vel modi!</p>
                    </div>
                  </div>
                </li>
                <li class="glide__slide">
                  <div class="new__card">
                    <div class="card__header">
                      <img src="./images/news5.jpg" alt="">
                    </div>
                    <div class="card__footer">
                      <h3>Styling White Shirts After A Cool Day</h3>
                      <span>By <strong>Admin</strong></span>
                      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo praesentium, numquam non
                        provident rem sed minus natus unde vel modi!</p>
                    </div>
                  </div>
                </li>
              </ul>
            </div>
          </div>

        </div>
      </div>
    </section>

    <!-- NewsLetter -->
    <section class="section newsletter" id="contact">
      <div class="container">
        <div class="newsletter__content">
          <div class="newsletter__data">
            <h3>ĐĂNG KÝ ĐỂ THEO DÕI THÊM VỀ CHÚNG TÔI</h3>
            <p>Một câu ngắn mô tả những gì ai đó sẽ nhận được bằng cách đăng ký</p>
          </div>
          <form action="#">
            <input type="email" placeholder="Điền Email của bạn vào đây" class="newsletter__email">
            <a class="newsletter__link" href="#">Đăng ký</a>
          </form>
        </div>
      </div>
    </section>

  </main>

  <!-- End Main -->

 <!-- Footer -->
 <footer id="footer" class="section footer" style="background-image: url(images/Footer-Background-Image.png)">
  <div class="container">
    <div class="footer__top">
      <div class="footer-top__box">
        <h3>SẢN PHẨM</h3>
        <a href="#">Chó</a>
        <a href="#">Mèo</a>
        <a href="#">Phụ kiện</a>
      </div>
      <div class="footer-top__box">
        <h3>THÔNG TIN</h3>
        <a href="#">Về chúng tôi</a>
        <a href="#">Chính Sách Bảo Mật</a>
        <a href="#">Điều khoản và Điều kiện</a>
        <a href="#">Liên hệ</a>
      </div>
      <div class="footer-top__box">
        <h3>TÀI KHOẢN CỦA TÔI</h3>
        <a href="#">Thông tin tài khoản</a>
        <a href="#">Danh sách đơn hàng</a>
      </div>
      <div class="footer-top__box">
        <h3>LIÊN HỆ</h3>
        <div>
          <span>
            <svg>
              <use xlink:href="images/sprite.svg#icon-location"></use>
            </svg>
          </span>
          206 Đường Kim Mã, Quận Ba Đình, TP. Hà Nội
        </div>
        <div>
          <span>
            <svg>
              <use xlink:href="images/sprite.svg#icon-envelop"></use>
            </svg>
          </span>
          petmart.support@gmail.com
        </div>
        <div>
          <span>
            <svg>
              <use xlink:href="images/sprite.svg#icon-phone"></use>
            </svg>
          </span>
          (+84) 386768658
        </div>
      </div>
    </div>
  </div>
  <div class="footer__bottom">
    <div class="footer-bottom__box">

    </div>
    <div class="footer-bottom__box">

    </div>
  </div>
  </div>
</footer>

<!-- End Footer -->


  <!-- Go To -->

  <a href="#header" class="goto-top scroll-link">
    <svg>
      <use xlink:href="images/sprite.svg#icon-arrow-up"></use>
    </svg>
  </a>


  <!-- Glide Carousel Script -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>

  <!-- Animate On Scroll -->
  <script src="js/jquery-3.5.1.min.js"></script>
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

  <!-- Custom JavaScript -->
  <script src="js/number-format.js"></script>
  <script src="js/index.js"></script>
  <script src="js/slider.js"></script>
  <script src="js/custom.js"></script>
  <script src="js/sweat-alert.js"></script>

</body>

</html>