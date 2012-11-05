<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="include/resource.jsp"></jsp:include>
<title>Legres page</title>
<script language="JavaScript">
	function myimage(pic) {
		document.images[0].src=pic
	}
</script>
</head>
<body>
<jsp:include page="include/header.jsp"></jsp:include>
<div class="container-fluid"> 
<div class="row-fluid">
<div class="span3"> 
<jsp:include page="include/menu.jsp"></jsp:include>
</div>
<div class="span9">
	<div class="container-fluid">
		<div class="span8">
			<div class="row">
			<img align="left" width="100%" src="http://fruity072.files.wordpress.com/2011/09/istock20happy20family.jpg">
			</div>
			<div class ="row">
			<br>
			<ul class="thumbnails">
			
				<li class="span4">
					<a href="javascript:myimage('http://www.happyfamilymag.com/blog/wp-content/uploads/2011/04/happy-family.jpg2_.jpg')" class="thumbnail">
						<img src="http://www.happyfamilymag.com/blog/wp-content/uploads/2011/04/happy-family.jpg2_.jpg" alt="">
					</a>
				</li>
				<li class="span4">
					<a href="javascript:myimage('http://fruity072.files.wordpress.com/2011/09/istock20happy20family.jpg')" class="thumbnail">
						<img src="http://fruity072.files.wordpress.com/2011/09/istock20happy20family.jpg">
					</a>
				</li>
				<li class="span4">
					<a href="javascript:myimage('http://www.babystore.info/wp-content/uploads/2012/04/happy-family.jpg')" class="thumbnail">
						<img src="http://www.babystore.info/wp-content/uploads/2012/04/happy-family.jpg">
					</a>
				</li>
			
			</ul>
			</div>
		</div>
		<div class="span4 well">
		<p> В  чем секрет счастливой семьи? Их, этих секретов, конечно несколько. Однако один  из основных секретов счастливой семьи – это секрет общения.<br />
          В  счастливых семьях супруги довольно много общаются между собой. В семьях  несчастных партнеры общаются мало. <br />
В  счастливых семьях партнеры общаются глубоко, то есть проговаривают свои планы,  проговаривают вслух недовольство, проговаривают глубоко темы денег, 
       интимные отношения,  отношения с родителями. <br />



          Супруги,  которые в браке в меру счастливы, как правило, общаются поверхностно, в основном  на уровне бытовых вещей, таких как обед, домашние обязанности, действия других  людей (сплетни) и т.д. Планы и мечты, интересы и увлечения в таких семьях  у каждого свои, о них умалчивается. <br />

 

          В  счастливых семьях доверяют друг другу, рассказывают те вещи, о которых иногда  больно рассказывать, которые не всегда красят человека. В несчастных семьях откровенность  не приветствуется, так как она приводит к «удару под дых». 

		<br>

		<br />



          В  счастливых семьях больше обсуждают проблемы и думают о том, как их решить. В  несчастных больше критикуют, а если кто-то из супругов высказывает свое мнение, то  его начинают критиковать.<br>

		<br />

 

          В  счастливых семьях прощают друг другу не всегда красивое поведение. В семьях,  где нет доверия и взаимопонимания, не принято так же и прощать друг друга.  Часто вспоминают ошибки партнера на протяжении многих лет и даже десятилетий, и  даже если не  говорят вслух, то  вспоминают про себя.  <br>

		<br />

 



          Так  что общайтесь, проговаривайте свои проблемы, предлагайте решение,  разговаривайте о будущем, о своих мечтах и о том, что вы цените друг в друге и  ваша семья станет значительно счастливее и благополучнее. </p>
		
		</div>
	</div>


</div>
</div>
<hr class="soften">
<br>
<br>
<br>
<br>


</div>
<jsp:include page="include/footer.jsp"></jsp:include>
</body>
</html>