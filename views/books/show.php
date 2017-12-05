<!DOCTYPE html>
<html>
<?php 
	require 'views/layouts/css_js.php';
	
 ?>
<body>
			
	<div class="wrapper">
		<?php 
		require 'views/layouts/header.php';
		 ?>
		<!-- header end -->
		<div class="container" id ="menu-desktop">
			<ul class="menu">
				<li class="dropdown-hover">
					<a href="/">Home</a>
					<ul>
				    <li><a href="#">HTML</a></li>
				    <li><a href="#">CSS</a></li>
				    <li><a href="#">JavaScript</a></li>
				  </ul>
				</li>
				<li class="dropdown-hover mega-dropdown-menu">
					<a href="categories.html">Categories</a>
					<ul>
						<div class="mega-menu container">
							<div class="row">
								<div class="col-sm-2 col-xs-4">
									<div class="menu-list">
										<h5>Categories</h5>
										<a href="#">Technology</a>
										<a href="#">Fiction</a>
										<a href="#"> Health & Fitness</a>
										<a href="#"> History</a>
										<a href="#"> Mystery</a>
										<a href="#">Politics & Current Affairs</a>
									</div>
								</div>
								<div class="col-sm-2 col-xs-4">
									<div class="menu-list">
										<h5>Categories</h5>
										<a href="#">Technology</a>
										<a href="#">Fiction</a>
										<a href="#"> Health & Fitness</a>
										<a href="#"> History</a>
										<a href="#"> Mystery</a>
										<a href="#">Politics & Current Affairs</a>
									</div>
								</div>
								<div class="col-sm-2 col-xs-4">
									<div class="menu-list">
										<h5>Categories</h5>
										<a href="#">Technology</a>
										<a href="#">Fiction</a>
										<a href="#"> Health & Fitness</a>
										<a href="#"> History</a>
										<a href="#"> Mystery</a>
										<a href="#">Politics & Current Affairs</a>
									</div>
								</div>
								<div class="col-sm-6">
									<h3 style="text-align: center;">You should read</h3>
									<div class="book-img-menu">
			        	  	<a href="#">
			            		<img alt="images" src="images/img592.u3059.d20170616.t101749.921069.jpg" >
			            		<p>Dac Nhan Tam</p>
		            		</a>
		            	</div>
		            	<div class="book-img-menu">
			        	  	<a href="#">
			            		<img alt="images" src="images/img592.u3059.d20170616.t101749.921069.jpg" >
			            		<p>Dac Nhan Tam</p>
			            		
		            		</a>
		            	</div>
		            	<div class="book-img-menu">
			        	  	<a href="#">
			            		<img alt="images" src="images/img592.u3059.d20170616.t101749.921069.jpg" >
			            		<p>Dac Nhan Tam</p>
			            		
		            		</a>
		            	</div>
								</div>
							</div>
						</div>
					</ul>
				</li>
				<li class="dropdown-hover">
					<a href="#">Contact</a>
					<ul>
						<li>
							<a href="#">Facebook <i class="fa fa-facebook-square" style="font-size: 30px"></i></a>
						</li>
						<li>
							<a href="#"> Twitter <i class="fa fa-twitter-square" style="font-size: 30px"></i></a>
						</li>
					</ul>
				</li>
				<li class="dropdown-hover">
						<a href="#">Introduction</a>
					<ul>
						<li>
							<a href="#">Facebook <i class="fa fa-facebook-square" style="font-size: 30px"></i></a>
						</li>
						<li>
							<a href="#"> Twitter <i class="fa fa-twitter-square" style="font-size: 30px"></i></a>
						</li>
					</ul>
				</li>
				<li class="Tabs-presentation-slider">
				</li>
				
			</ul>
		</div>
		<div class="container" id="container-detail">
			<div class="col-md-6 col-xs-12">
				<img src="<?php echo $this->book->image_url ?>" alt="images" class="media-object img-responsive" style="width: 100%;text-align: center;">
			</div>
			<div class="col-md-6 col-xs-12" id="detail-book">
				<div  id="detail-1">
					<h3>Book <span><?php echo $this->book->name ?></span></h3>
					<h3>Authors: <span><?php echo $this->book->author ?></span></h3>
					<h3>Price: <span><?php echo $this->book->price ?> ₫</span></h3>
					<h3>Price sale: <span><?php echo $this->book->sale ?> ₫</span></h3>
					<h3>Star
					<a href="#" class="glyphicon glyphicon-star-empty" id="star1"></a>
					<a href="#" class="glyphicon glyphicon-star-empty" id="star2"></a>
					<a href="#" class="glyphicon glyphicon-star-empty" id="star3"></a>
					<a href="#" class="glyphicon glyphicon-star-empty" id="star4"></a>
					<a href="#" class="glyphicon glyphicon-star-empty" id="star5"></a>
					</h3>
					<span><p class="money"><?php echo $this->book->sale ?> ₫</p> (Đã có VAT)</span>
				</div>
<?php
	$num_sale=(int)$this->book->sale;
	$num_price=(int)$this->book->price;
	 $sale = round((1-$num_sale/$num_price)*100);
	 $money = $sale*$this->book->price/100;
?>
<pre> 
	Tiết kiệm: <?= $sale?>% (<?= $money?> đ)
	Giá thị trường: <?php echo $this->book->price ?> ₫
</pre>
<pre> 
	<?php echo $this->book->description?>
</pre>
				<a href="/collects/buy?id=<?php echo $this->book->id ?>" class="btn btn-block" data-remote="true" data-method="POST"><p class="color-i"><i class="fa fa-shopping-cart"></i> Đặt hàng ngay</p></a><br>
			</div>
		</div>
		<div class="container">
		
			<div class="row topweekend">
				<div class="col-md-12">
					<h1 class="title">Top View</h1>
		      <div class="owl-carousel owl-theme"  id="topweekend">
	      		<?php
	      			while ($row = mysqli_fetch_object($this->top_weekend)){
	      				echo '
									<div class="item">
			            	<div class="book-list">
				        	  	<a href="/books/show?q='.$row->id.'">
				            		<img alt="images" src="'.$row->image_url.'" >
				            		<div class="icon-self">
				            			<span class="badge badge-deal">22
				            			</span>
				            		</div>
				            		<div class="content-book">
				            			<p class="name-book">'.$row->name.'</p> 
				            			<p class="price-sale">
				            				 '.$row->sale.'₫ 
				            				<span class="price-regular">'.$row->price.' ₫</span>
				            			</p>
				            			<p></p>
				            		</div>
			            		</a>
				            		<div class="box-btn">
				            			
				            			<div class="box-rate">
				            				<p >Rate :<span style="color:yellow">';


				            for( $i = intval($row->star);$i > 0;$i--){
				            			echo '<i class="fa fa-star" aria-hidden="true"></i>';
				            }
				            		
				            echo '
				            					</span>
				            				</p>
				            			</div>
				            			<div class="btn-img">
				            				<a href="/collects/buy?id='.$row->id.'" type="button" class="btn btn-cart" data-remote = "true" data-method="POST"><i class="fa fa-cart-plus" aria-hidden="true"></i>
				            				</a>
				            			</div>
				            		</div>
				            	</div>
				          </div>
	      			';
	      			}
	      		 ?>
		      </div>
				</div>
			</div>
		</div>
		<div class="container">
		  <main class="hoc container clear"> 
		    <!-- main body -->
		    <div class="content"> 
		      <div id="comments">
		        <h2 class="comments-name">Comments</h2>
		        <ul>
		          <li>
		            <article>
		              <header>
		                <figure class="avatar"><a href="#" class="glyphicon glyphicon-user"></a></figure>
		                <address>
		                	<img src="http://graph.facebook.com/100004764192420/picture" alt=""><a href="#" class="">Nguyễn Tường Vi</a>
		                </address>
		                <time datetime="2017-10-06T08:15+00:00">Friday, 6<sup>th</sup> October 2017 @08:15:00</time>
		              </header>
		              <div class="comcont">
		                <p>This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.</p>
		              </div>
		            </article>
		          </li>
		          <li>
		            <article>
		              <header>
		                <figure class="avatar"><a href="#" class="glyphicon glyphicon-user"></a></figure>
		                <address>
		                	 <img src="http://graph.facebook.com/100002953237059/picture" alt=""><a href="#">Nguyễn Anh Việt</a> 
		                </address>
		                <time datetime="2017-10-06T08:15+00:00">Friday, 6<sup>th</sup> October 2017 @08:15:00</time>
		              </header>
		              <div class="comcont">
		                <p>This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.</p>
		              </div>
		            </article>
		          </li>
		          <li>
		            <article>
		              <header>
		                <figure class="avatar"><a href="#" class="glyphicon glyphicon-user"></a></figure>
		                <address>
		                	 <img src="http://graph.facebook.com/100015349683870/picture" alt=""><a href="#">Nguyễn Khương Duy</a>
		                </address>
		                <time datetime="2017-10-06T08:15+00:00">Friday, 6<sup>th</sup> October 2017 @08:15:00</time>
		              </header>
		              <div class="comcont">
		                <p>This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.</p>
		              </div>
		            </article>
		          </li>
		        </ul>
		        <h2 class="write-comment">Write A Comment</h2>
		        <form action="books/comment?q=<?php echo $this->book->id ?>" method="post" id="form-comment" class="form-horizontal">
		        	<div class="row">
			          <div class="col-md-4 col-xs-12">
			            <div class="group">      
					      <input type="text" required>
					      <span class="highlight"></span>
					      <span class="bar"></span>
					      <label>Name</label>
					    </div>
			          </div>
			          <div class="col-md-4 col-xs-12">
			            <div class="group">      
					      <input type="email" required>
					      <span class="highlight"></span>
					      <span class="bar"></span>
					      <label>Email</label>
					    </div>
			          </div>
			          <div class="col-md-4 col-xs-12">
			            <div class="group">      
					      <input type="url" required>
					      <span class="highlight"></span>
					      <span class="bar"></span>
					      <label>Website</label>
					    </div>
			          </div>
		          	</div>
		          	<div class="row" id="row-text">
			            <textarea placeholder="This is an awesome comment box" rows="10" name="comment[text]" id="comment_text" cols="40" class="ui-autocomplete-input" autocomplete="off" role="textbox" aria-autocomplete="list" aria-haspopup="true"></textarea>
		          	</div>
		          	<div>
			            <input type="submit" name="submit" value="Comment" class="btn btn-warning">
			            &nbsp;
			            <input type="reset" name="reset" value="Reset Form" class="btn btn-warning">
		          	</div>
		        </form>
		      </div>
		      <!-- ################################################################################################ -->
		    </div>
		    <!-- / main body -->
		    <div class="clear"></div>
		  </main>
		</div>
	</div>

		
	<a href="#" class="overlay"></a>
</body>
</html>