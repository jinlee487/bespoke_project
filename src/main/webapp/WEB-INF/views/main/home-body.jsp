<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Body</title>

<!-- bootstrap template 사용 -->
<!-- https://themewagon.com/themes/free-bootstrap-4-html5-agency-website-templates-law-firm/ -->
</head>
<body>
    <div class="hero-wrap" style="background-image: url('/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center">
          <div class="col-md-6 ftco-animate d-flex align-items-end">
          	<div class="text w-100">
	            <h1 class="mb-4">Bespoke</h1>
	            


	            <p class="mb-4">‘가치’ 를 아는<br>‘가치’ 있는 분을 위한<br>‘가치’ 있는 옷<br>비스포크 수트</p>
	            <!-- <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia.</p> -->
	            <p>
	            	<sec:authorize access="isAnonymous()">
	            		<a href="/loginForm" class="btn btn-primary py-3 px-4">로그인</a>
	            		<a href="/sign_up_form" class="btn btn-white py-3 px-4">회원가입</a>
	            	</sec:authorize>
	            	<sec:authorize access="isAuthenticated()">
	            		<a href="/logout" class="btn btn-primary py-3 px-4">로그아웃</a>
	            	</sec:authorize>
	            </p>
            </div>
          </div>
          <a href="https://vimeo.com/45830194" class="img-video popup-vimeo d-flex align-items-center justify-content-center">
          	<span class="fa fa-play"></span>
          </a>
        </div>
      </div>
    </div>

    <section class="ftco-intro">
    	<div class="container-fluid" style="padding-left: 0px; padding-right: 0px;">
    		<div class="row no-gutters">
    			<div class="col-md-3 d-flex">
    				<div class="intro aside-stretch d-lg-flex w-100">
    					<div class="icon">
    						<span class="flaticon-lawyer"></span>
    					</div>
    					<div class="text">
    						<h2>Expert Tailors</h2>
    						<p>TEXT</p>
    					</div>
    				</div>
    			</div>
    			<div class="col-md-3 d-flex">
    				<div class="intro color-1 d-lg-flex w-100">
    					<div class="icon">
    						<span class="flaticon-auction"></span>
    					</div>
    					<div class="text">
    						<h2>TEXT</h2>
    						<p>TEXT</p>
    					</div>
    				</div>
    			</div>
    			<div class="col-md-3 d-flex">
    				<div class="intro color-2 d-lg-flex w-100">
    					<div class="icon">
    						<span class="flaticon-court"></span>
    					</div>
    					<div class="text">
    						<h2>TEXT</h2>
    						<p>TEXT</p>
    					</div>
    				</div>
    			</div>
    			<div class="col-md-3 d-flex">
    				<div class="intro color-3 d-lg-flex w-100">
    					<div class="icon">
    						<span class="flaticon-court"></span>
    					</div>
    					<div class="text">
    						<h2>TEXT</h2>
    						<p>TEXT</p>
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>
    </section>

    <section class="ftco-section ftco-no-pb ftco-no-pt">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-md-6 d-flex align-items-stretch">
						<div class="img img-3 w-100 d-flex justify-content-center align-items-center" style="background-image: url(/images/about-1.jpg); position: relative;">
							<a href="https://vimeo.com/45830194" class="play-video popup-vimeo d-flex align-items-center justify-content-center">
								<span class="fa fa-play"></span>
	            </a>
						</div>
					</div>
					<div class="col-md-6 wrap-about ftco-animate">
						<div class="bg-light px-3 px-md-5 py-5 ">
		          <div class="heading-section">
		          	<span class="subheading">Welcome to Law Firm</span>
		            <h2 class="mb-3">Why to Put Trust Your Trust In Law Firm</h2>

		            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
		          </div>

		          <div class="row">
		          	<div class="col-lg-6">
		          		<div class="services d-flex w-100">
			    					<div class="icon d-flex align-items-center justify-content-center">
			    						<span class="flaticon-lawyer"></span>
			    					</div>
			    					<div class="text pl-2">
			    						<h2>Expert Attorneys</h2>
			    						<p>A small river named Duden flows by their place and supplies</p>
			    					</div>
			    				</div>
		          	</div>
		          	<div class="col-lg-6">
		          		<div class="services d-flex w-100">
			    					<div class="icon d-flex align-items-center justify-content-center">
			    						<span class="flaticon-discount"></span>
			    					</div>
			    					<div class="text pl-2">
			    						<h2>Great Discount</h2>
			    						<p>A small river named Duden flows by their place and supplies</p>
			    					</div>
			    				</div>
		          	</div>
		          	<div class="col-lg-6">
		          		<div class="services d-flex w-100">
			    					<div class="icon d-flex align-items-center justify-content-center">
			    						<span class="flaticon-auction"></span>
			    					</div>
			    					<div class="text pl-2">
			    						<h2>Legal Advisory</h2>
			    						<p>A small river named Duden flows by their place and supplies</p>
			    					</div>
			    				</div>
		          	</div>
		          	<div class="col-lg-6">
		          		<div class="services d-flex w-100">
			    					<div class="icon d-flex align-items-center justify-content-center">
			    						<span class="flaticon-handcuffs"></span>
			    					</div>
			    					<div class="text pl-2">
			    						<h2>Quick Charges</h2>
			    						<p>A small river named Duden flows by their place and supplies</p>
			    					</div>
			    				</div>
		          	</div>
		          </div>
	          </div>

					</div>
				</div>
			</div>
		</section>

		<section class="ftco-counter ftco-section ftco-no-pt mt-4 ftco-no-pb img" id="section-counter">
    	<div class="container">
    		<div class="row">
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch counter-wrap ftco-animate">
            <div class="block-18 py-4 w-100">
            	<span class="icon flaticon-checklist"></span>
              <div class="text align-items-center">
                <strong class="number" data-number="3000">0</strong>
                <span>Trusted Clients</span>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch counter-wrap ftco-animate">
            <div class="block-18 py-4 w-100">
            	<span class="icon flaticon-checklist"></span>
              <div class="text align-items-center">
                <strong class="number" data-number="1000">0</strong>
                <span>Honor's &amp; Awards</span>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch counter-wrap ftco-animate">
            <div class="block-18 py-4 w-100">
            	<span class="icon flaticon-checklist"></span>
              <div class="text align-items-center">
                <strong class="number" data-number="2000">0</strong>
                <span>Expert Lawyers</span>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch counter-wrap ftco-animate">
            <div class="block-18 py-4 w-100">
            	<span class="icon flaticon-checklist"></span>
              <div class="text align-items-center">
                <strong class="number" data-number="10540">0</strong>
                <span>Successful Cases</span>
              </div>
            </div>
          </div>
        </div>
    	</div>
    </section>

		<section class="ftco-section">
    	<div class="container">
    		<div class="row justify-content-center pb-5">
          <div class="col-md-7 heading-section text-center ftco-animate">
          	<span class="subheading">Practice Area</span>
            <h2>What We Cover</h2>
          </div>
        </div>
    		<div class="row">
    			<div class="col-md-4 d-flex align-items-stretch ftco-animate">
    				<div class="services-2 text-center">
    					<div class="icon-wrap">
    						<div class="mini-icon d-flex align-items-center justify-content-center"><span class="flaticon-stats"></span></div>
	    					<div class="icon d-flex align-items-center justify-content-center">
	    						<span class="flaticon-stats"></span>
	    					</div>
    					</div>
    					<h2>Business Law</h2>
    					<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
    				</div>
    			</div>
    			<div class="col-md-4 d-flex align-items-stretch ftco-animate">
    				<div class="services-2 text-center">
    					<div class="icon-wrap">
    						<div class="mini-icon d-flex align-items-center justify-content-center"><span class="flaticon-family"></span></div>
	    					<div class="icon d-flex align-items-center justify-content-center">
	    						<span class="flaticon-family"></span>
	    					</div>
    					</div>
    					<h2>Family Law</h2>
  						<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
    				</div>
    			</div>
    			<div class="col-md-4 d-flex align-items-stretch ftco-animate">
    				<div class="services-2 text-center">
    					<div class="icon-wrap">
    						<div class="mini-icon d-flex align-items-center justify-content-center"><span class="flaticon-handcuffs"></span></div>
	    					<div class="icon d-flex align-items-center justify-content-center">
	    						<span class="flaticon-handcuffs"></span>
	    					</div>
    					</div>
    					<h2>Criminal Law</h2>
  						<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
    				</div>
    			</div>
    			<div class="col-md-4 d-flex align-items-stretch ftco-animate">
    				<div class="services-2 text-center">
    					<div class="icon-wrap">
    						<div class="mini-icon d-flex align-items-center justify-content-center"><span class="flaticon-stay-home"></span></div>
	    					<div class="icon d-flex align-items-center justify-content-center">
	    						<span class="flaticon-stay-home"></span>
	    					</div>
    					</div>
    					<h2>Real Estate Law</h2>
    					<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
    				</div>
    			</div>
    			<div class="col-md-4 d-flex align-items-stretch ftco-animate">
    				<div class="services-2 text-center">
    					<div class="icon-wrap">
    						<div class="mini-icon d-flex align-items-center justify-content-center"><span class="flaticon-injury"></span></div>
	    					<div class="icon d-flex align-items-center justify-content-center">
	    						<span class="flaticon-injury"></span>
	    					</div>
    					</div>
    					<h2>Personal Injury</h2>
  						<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
    				</div>
    			</div>
    			<div class="col-md-4 d-flex align-items-stretch ftco-animate">
    				<div class="services-2 text-center">
    					<div class="icon-wrap">
    						<div class="mini-icon d-flex align-items-center justify-content-center"><span class="flaticon-auction"></span></div>
	    					<div class="icon d-flex align-items-center justify-content-center">
	    						<span class="flaticon-auction"></span>
	    					</div>
    					</div>
    					<h2>Judicial Law</h2>
  						<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
    				</div>
    			</div>
    		</div>
    	</div>
    </section>

    <section class="ftco-section ftco-no-pt ftco-no-pb">
      <div class="container-fluid px-md-4">
      	<div class="row justify-content-center pb-5">
          <div class="col-md-8 text-center heading-section ftco-animate">
          	<span class="subheading">Cases</span>
            <h2 class="mb-3">Recent Case Studies</h2>
          </div>
        </div>
      	<div class="row">
      		<div class="col-md-3 d-flex align-items-stretch">
      			<div class="case-wrap d-flex">
      				<div class="img" style="background-image: url(/images/case-1.jpg);">
      					<div class="text">
	      					<h2>Business Law</h2>
	      					<p>Far far away, behind the word</p>
	      				</div>
      				</div>
      			</div>
      		</div>
      		<div class="col-md-6 d-flex align-items-stretch">
      			<div class="case-wrap d-flex">
      				<div class="img" style="background-image: url(/images/case-2.jpg);">
      					<div class="text">
	      					<h2>Criminal Offense</h2>
	      					<p>Far far away, behind the word</p>
	      				</div>
      				</div>
      			</div>
      		</div>
      		<div class="col-md-3 d-flex align-items-stretch">
      			<div class="case-wrap d-flex">
      				<div class="img" style="background-image: url(/images/case-3.jpg);">
      					<div class="text">
	      					<h2>Dispute Resolution</h2>
	      					<p>Far far away, behind the word</p>
	      				</div>
      				</div>
      			</div>
      		</div>

      		<div class="col-md-3 d-flex align-items-stretch">
      			<div class="case-wrap d-flex">
      				<div class="img" style="background-image: url(/images/case-4.jpg);">
      					<div class="text">
	      					<h2>Business Law</h2>
	      					<p>Far far away, behind the word</p>
	      				</div>
      				</div>
      			</div>
      		</div>
      		<div class="col-md-3 d-flex align-items-stretch">
      			<div class="case-wrap d-flex">
      				<div class="img" style="background-image: url(/images/case-5.jpg);">
      					<div class="text">
	      					<h2>Business Law</h2>
	      					<p>Far far away, behind the word</p>
	      				</div>
      				</div>
      			</div>
      		</div>
      		<div class="col-md-3 d-flex align-items-stretch">
      			<div class="case-wrap d-flex">
      				<div class="img" style="background-image: url(/images/case-6.jpg);">
      					<div class="text">
	      					<h2>Business Law</h2>
	      					<p>Far far away, behind the word</p>
	      				</div>
      				</div>
      			</div>
      		</div>
      		<div class="col-md-3 d-flex align-items-stretch">
      			<div class="case-wrap d-flex">
      				<div class="img" style="background-image: url(/images/case-7.jpg);">
      					<div class="text">
	      					<h2>Business Law</h2>
	      					<p>Far far away, behind the word</p>
	      				</div>
      				</div>
      			</div>
      		</div>
      	</div>
      </div>
    </section>

  
    <section class="ftco-section testimony-section">
    	<div class="img img-bg" style="background-image: url(/images/bg_4.jpg)"></div>
    	<div class="overlay"></div>
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
          	<span class="subheading">Testimonial</span>
            <h2 class="mb-3">Happy Clients</h2>
          </div>
        </div>
        <div class="row ftco-animate">
          <div class="col-md-12">
            <div class="carousel-testimony owl-carousel ftco-owl">
              <div class="item">
                <div class="testimony-wrap py-4">
                	<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></span></div>
                  <div class="text">
                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <div class="d-flex align-items-center">
                    	<div class="user-img" style="background-image: url(/images/person_1.jpg)"></div>
                    	<div class="pl-3">
		                    <p class="name">Roger Scott</p>
		                    <span class="position">Marketing Manager</span>
		                  </div>
	                  </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap py-4">
                	<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></span></div>
                  <div class="text">
                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <div class="d-flex align-items-center">
                    	<div class="user-img" style="background-image: url(/images/person_2.jpg)"></div>
                    	<div class="pl-3">
		                    <p class="name">Roger Scott</p>
		                    <span class="position">Marketing Manager</span>
		                  </div>
	                  </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap py-4">
                	<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></span></div>
                  <div class="text">
                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <div class="d-flex align-items-center">
                    	<div class="user-img" style="background-image: url(/images/person_3.jpg)"></div>
                    	<div class="pl-3">
		                    <p class="name">Roger Scott</p>
		                    <span class="position">Marketing Manager</span>
		                  </div>
	                  </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap py-4">
                	<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
                  <div class="text">
                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <div class="d-flex align-items-center">
                    	<div class="user-img" style="background-image: url(/images/person_1.jpg)"></div>
                    	<div class="pl-3">
		                    <p class="name">Roger Scott</p>
		                    <span class="position">Marketing Manager</span>
		                  </div>
	                  </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap py-4">
                	<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></span></div>
                  <div class="text">
                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <div class="d-flex align-items-center">
                    	<div class="user-img" style="background-image: url(/images/person_2.jpg)"></div>
                    	<div class="pl-3">
		                    <p class="name">Roger Scott</p>
		                    <span class="position">Marketing Manager</span>
		                  </div>
	                  </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
		
		<section class="ftco-appointment ftco-section img" style="background-image: url(/images/bg_2.jpg);">
			<div class="overlay"></div>
    	<div class="container">
    		<div class="row">
    			<div class="col-md-6 pr-md-5">
    				<div class="heading-section heading-section-white">
	            <h2 class="mb-3">We Have Great Results</h2>
	            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
	            <div class="row mt-md-4">
	            	<div class="col-lg-6">
	            		<div class="services d-flex w-100">
			    					<div class="icon icon-2 d-flex align-items-center justify-content-center">
			    						<span class="flaticon-medal"></span>
			    					</div>
			    					<div class="text pl-3">
			    						<h2>Award Winning</h2>
			    						<p>A small river named Duden flows by their place and supplies</p>
			    					</div>
			    				</div>
	            	</div>
	            	<div class="col-lg-6">
	            		<div class="services d-flex w-100">
			    					<div class="icon icon-2 d-flex align-items-center justify-content-center">
			    						<span class="flaticon-auction"></span>
			    					</div>
			    					<div class="text pl-3">
			    						<h2>60 Years of Experience</h2>
			    						<p>A small river named Duden flows by their place and supplies</p>
			    					</div>
			    				</div>
	            	</div>
	            	<div class="col-lg-12">
	            		<div class="services d-flex w-100">
			    					<div class="icon icon-2 d-flex align-items-center justify-content-center">
			    						<span class="flaticon-lawyer"></span>
			    					</div>
			    					<div class="text pl-3">
			    						<h2>Best Attorneys team</h2>
			    						<p>A small river named Duden flows by their place and supplies</p>
			    					</div>
			    				</div>
	            	</div>
	            </div>
    				</div>
    			</div>
    			<div class="col-md-6 half ftco-animate">
    				<h2 class="mb-4">Free Case Consultation</h2>
    				<form action="#" class="appointment">
    					<div class="row">
								<div class="col-md-6">
									<div class="form-group">
			              <input type="text" class="form-control" placeholder="Your Name">
			            </div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
			              <input type="text" class="form-control" placeholder="Email">
			            </div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
			    					<div class="form-field">
	          					<div class="select-wrap">
	                      <div class="icon"><span class="fa fa-chevron-down"></span></div>
	                      <select name="" id="" class="form-control">
	                      	<option value="">Practice Areas</option>
	                        <option value="">Business Law</option>
	                        <option value="">Criminal Law</option>
	                        <option value="">Family Law</option>
	                        <option value="">Judicial Law</option>
	                        <option value="">Personal Injury</option>
	                        <option value="">Real Estate Law</option>
	                      </select>
	                    </div>
			              </div>
			    				</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
			              <textarea name="" id="" cols="30" rows="7" class="form-control" placeholder="Message"></textarea>
			            </div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
			              <input type="submit" value="Send message" class="btn btn-primary py-3 px-4">
			            </div>
								</div>
    					</div>
	          </form>
    			</div>
    		</div>
    	</div>
    </section>

    <section class="ftco-section">
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 heading-section text-center ftco-animate">
          	<span class="subheading">Blog</span>
            <h2>Recent Blog</h2>
          </div>
        </div>
        <div class="row d-flex">
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <div class="text text-center">
              	<a href="blog-single.html" class="block-20 img d-flex align-items-center" style="background-image: url('/images/image_1.jpg');">
              		<div class="meta text-center mb-2 d-flex align-items-center justify-content-center">
	                	<div>
	                		<span class="day">02</span>
	                		<span class="mos">June</span>
	                		<span class="yr">2020</span>
	                	</div>
	                </div>
	              </a>
                <h3 class="heading mb-3"><a href="#">Social Media Risks To Mental Health</a></h3>
                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <div class="text text-center">
              	<a href="blog-single.html" class="block-20 img d-flex align-items-center" style="background-image: url('/images/image_2.jpg');">
              		<div class="meta text-center mb-2 d-flex align-items-center justify-content-center">
	                	<div>
	                		<span class="day">02</span>
	                		<span class="mos">June</span>
	                		<span class="yr">2020</span>
	                	</div>
	                </div>
	              </a>
                <h3 class="heading mb-3"><a href="#">Social Media Risks To Mental Health</a></h3>
                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <div class="text text-center">
              	<a href="blog-single.html" class="block-20 img d-flex align-items-center" style="background-image: url('/images/image_3.jpg');">
              		<div class="meta text-center mb-2 d-flex align-items-center justify-content-center">
	                	<div>
	                		<span class="day">02</span>
	                		<span class="mos">June</span>
	                		<span class="yr">2020</span>
	                	</div>
	                </div>
	              </a>
                <h3 class="heading mb-3"><a href="#">Social Media Risks To Mental Health</a></h3>
								<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>              
							</div>
            </div>
          </div>
        </div>
      </div>
    </section>
 			
</body>
</html>