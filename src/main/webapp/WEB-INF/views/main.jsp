<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
   request.setCharacterEncoding("UTF-8");
%>    
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>메인 페이지</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/reset.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/product.css">
  <script src="http://code.jquery.com/jquery-latest.js"></script> 
    <script src="${contextPath}/resources/js/jquery-3.6.0.min.js"></script>
    <script src="${contextPath}/resources/js/pp.js"></script>
  
</head>
<body>

  <div id="product_wrap">
        <img src="${contextPath}/resources/image/topbanner_plusList220824.jpg" alt="#" width="2000" height="400">
        <div id="menu_wrap">
            <div id="btn">
                <p class="on"><a href="#">우유류</a></p>
                <p><a href="#">발효유류</a></p>
                <p><a href="#">유음료류</a></p>
                <p><a href="#">커피음료</a></p>
                <p><a href="#">치즈류</a></p>
                <p><a href="#">디저트류</a></p>
            </div>
            <p class="sch">검색결과</p>

            <div id="tab">
                <div class="on">
                    <h3>우유류</h3>
                    <ul>
                        <li class="milk_photo">
                             <img src="${contextPath}/resources/image/menu1.jpg" alt="#" width="264" height="264">
                            <p class="text">나100% 홈밀크</p>
                        </li>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu2.jpg" alt="#" width="264" height="264">
                           <p class="text">서울우유 가공우유</p>
                        </li>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu3.jpg" alt="#" width="264" height="264">
                            <p class="text">앙팡</p>
                        </li>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu4.jpg" alt="#" width="264" height="264">
                            <p class="text">서울우유</p>
                        </li>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu5.jpg" alt="#" width="264" height="264">
                            <p class="text">서울우유 나100% 저지방우유</p>
                        </li>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu6.jpg" alt="#" width="264" height="264">
                            <p class="text"> 서울우유 나100%</p>
                        </li>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu7.jpg" alt="#" width="264" height="264">
                            <p class="text">목장의 신선함이 살아있는 우유</p>
                        </li>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu8.jpg" alt="#" width="264" height="264">
                            <p class="text">무지방&칼슘 우유</p>
                        </li>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu9.jpg" alt="#" width="264" height="264">
                            <p class="text">초코꿀딴지, 딸기꿀딴지</p>
                        </li>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu10.jpg" alt="#" width="264" height="264">
                            <p class="text">서울우유 바나나우유</p>
                        </li>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu11.jpg" alt="#" width="264" height="264">
                            <p class="text">귀리우유</p>
                        </li>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu12.jpg" alt="#" width="264" height="264">
                            <p class="text">고단백저지방</p>
                        </li>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu13.jpg" alt="#" width="264" height="264">
                            <p class="text">속편한우유 저지방</p>
                        </li>
                    </ul>
                </div>
                <div>
                    <h3>발효유류</h3>
                    <ul>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu16.jpg" alt="#" width="264" height="264">
                        <p class="text">서울우유 요구르트</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu17.jpg" alt="#" width="264" height="264">
                        <p class="text">앙팡요구르트</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu18.jpg" alt="#" width="264" height="264">
                        <p class="text">캐리와장난감친구들 요구르트</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu19.jpg" alt="#" width="264" height="264">
                        <p class="text">서울우유 요구르트 제로</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu20.jpg" alt="#" width="264" height="264">
                        <p class="text">오렌지 요구르트</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu21.jpg" alt="#" width="264" height="264">
                        <p class="text">요하임 떠먹는 요거트 85</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu22.jpg" alt="#" width="264" height="264">
                        <p class="text">서울우유 요거트</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu23.jpg" alt="#" width="264" height="264">
                        <p class="text">짜요짜요</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu24.jpg" alt="#" width="264" height="264">
                        <p class="text">비요뜨</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu25.jpg" alt="#" width="264" height="264">
                        <p class="text">듀오안</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu26.jpg" alt="#" width="264" height="264">
                        <p class="text">장건강 프로바이오틱 사과,블루베리</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu27.jpg" alt="#" width="264" height="264">
                        <p class="text">상큼함이 살아있는 요구르트</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu28.jpg" alt="#" width="264" height="264">
                        <p class="text">목장의 신선함이 살아있는 요구르트<br>(딸기)</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu29.jpg" alt="#" width="264" height="264">
                        <p class="text">더 진한 플레인 요구르트 스위트 </p>
                    </li>
                </ul>
                </div>

                <div>
                    <h3>유음료류</h3>
                    <ul>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu30.jpg" alt="#" width="264" height="264">
                            <p class="text">아침에주스 오렌지</p>
                        </li>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu31.jpg" alt="#" width="264" height="264">
                            <p class="text">아침에주스 포도</p>
                        </li>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu32.jpg" alt="#" width="264" height="264">
                            <p class="text">아침에주스 제주감귤</p>
                        </li>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu33.jpg" alt="#" width="264" height="264">
                            <p class="text">아침에주스 사과</p>
                        </li>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu34.jpg" alt="#" width="264" height="264">
                            <p class="text">아침에주스 유기농(900ml)</p>
                        </li>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu35.jpg" alt="#" width="264" height="264">
                            <p class="text">아침에주스 미니</p>
                        </li>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu36.jpg" alt="#" width="264" height="264">
                            <p class="text">아침에주스 ABC주스</p>
                        </li>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu37.jpg" alt="#" width="264" height="264">
                            <p class="text">아침에주스 블랙라벨</p>
                        </li>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu38.jpg" alt="#" width="264" height="264">
                            <p class="text">리이브</p>
                        </li>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu39.jpg" alt="#" width="264" height="264">
                            <p class="text">사과,오렌지,자두나무</p>
                        </li>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu40.jpg" alt="#" width="264" height="264">
                            <p class="text">아침에주스 유기농</p>
                        </li>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu41.jpg" alt="#" width="264" height="264">
                            <p class="text">원두밀 플러스</p>
                        </li>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu42.jpg" alt="#" width="264" height="264">
                            <p class="text">검은깨.검은콩 두유</p>
                        </li>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu43.jpg" alt="#" width="264" height="264">
                            <p class="text">검은콩호두아몬드 두유</p>
                        </li>
                        <li class="milk_photo">
                            <img src="${contextPath}/resources/image/menu44.jpg" alt="#" width="264" height="264">
                            <p class="text">검은콩 귀리 호두 두유</p>
                        </li>

                    </ul>

                </div>
                <div>
                    <h3>커피음료</h3>
                    <ul>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu45.jpg" alt="#" width="264" height="264">
                        <p class="text">스페셜티 카페라떼</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu46.jpg" alt="#" width="264" height="264">
                        <p class="text">스타벅스</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu47.jpg" alt="#" width="264" height="264">
                        <p class="text">스타벅스 콜드브루페트</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu48.jpg" alt="#" width="264" height="264">
                        <p class="text">맥심 에스프레소 TOP 컵커피</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu49.jpg" alt="#" width="264" height="264">
                        <p class="text">커피빈 아메리카노</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu50.jpg" alt="#" width="264" height="264">
                        <p class="text">커피포리 200</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu51.jpg" alt="#" width="264" height="264">
                        <p class="text">클릭유커피 200 멸균</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu52.jpg" alt="#" width="264" height="264">
                        <p class="text">강릉커피</p>
                    </li>
                </ul>

                </div>
                <div>
                    <h3>치즈류</h3>
                    <ul>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu53.jpg" alt="#" width="264" height="264">
                        <p class="text">체다슬라이스치즈/<br>쭈~욱 늘어나는 체다치즈</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu54.jpg" alt="#" width="264" height="264">
                        <p class="text">앙팡 유기농 아기(어린이)<br>치즈 스텝 1, 2, 3</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu55.jpg" alt="#" width="264" height="264">
                        <p class="text">어린이치즈 앙팡</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu56.jpg" alt="#" width="264" height="264">
                        <p class="text">뽀로로가 좋아하는 칼슘왕치즈</p>
                    </li>

                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu57.jpg" alt="#" width="264" height="264">
                        <p class="text">지방을 줄인 고칼슘치즈</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu58.jpg" alt="#" width="264" height="264">
                        <p class="text">뼈에 쏙쏙 칼슘치즈</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu59.jpg" alt="#" width="264" height="264">
                        <p class="text">치즈마스터</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu60.jpg" alt="#" width="264" height="264">
                        <p class="text">어른을 위한 치즈</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu61.jpg" alt="#" width="264" height="264">
                        <p class="text">테이스티 슬라이스치즈</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu62.jpg" alt="#" width="264" height="264">
                        <p class="text">목장나들이 슈레드모짜렐라</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu63.jpg" alt="#" width="264" height="264">
                        <p class="text">테이스티 슈레드치즈</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu64.jpg" alt="#" width="264" height="264">
                        <p class="text">멀티팩 슈레드 모짜렐라</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu65.jpg" alt="#" width="264" height="264">
                        <p class="text">솔솔 뿌려먹는 모짜렐라 치즈</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu66.jpg" alt="#" width="264" height="264">
                        <p class="text">목장나들이 모짜렐라치즈</p>
                    </li>
                </ul>
                </div>
                
                <div>
                    <h3>디저트류</h3>
                    <ul>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu67.jpg" alt="#" width="264" height="264">
                        <p class="text">서울우유 아이스크림</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu68.jpg" alt="#" width="264" height="264">
                        <p class="text">서울우유 아이스크림 미니</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu69.jpg" alt="#" width="264" height="264">
                        <p class="text">비요뜨 요거트 아이스크림</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu70.jpg" alt="#" width="264" height="264">
                        <p class="text">서울피자관 미니피자</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu71.jpg" alt="#" width="264" height="264">
                        <p class="text">호랑이도 반한 크림떡</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu72.jpg" alt="#" width="264" height="264">
                        <p class="text">서울브리또관</p>
                    </li>
                    <li class="milk_photo">
                        <img src="${contextPath}/resources/image/menu73.jpg" alt="#" width="264" height="264">
                        <p class="text">서울피자관0</p>
                    </li>
                </ul>
                </div>
            </div>
        </div>
    </div>
</body>
</html>