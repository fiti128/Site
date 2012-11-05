<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar"%>

<!DOCTYPE html>
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
		<div class="hero-unit">
		<h2 class="pagination-centered">Сервис по возврату долгов с физических лиц</h2>
			<div class="row">
			<img align="left" width="100%" src="http://steer.ru/archives/31030815.jpg">
			<h2 class="alert alert-success pagination-centered">${welcomeMessage }</h2>
			</div>
			<div class ="row">
			<br>
			<ul class="thumbnails">
			
				<li class="span4">
					<a href="javascript:myimage('http://steer.ru/archives/31030815.jpg')" class="thumbnail">
						<img src="http://steer.ru/archives/31030815.jpg" alt="">
					</a>
				</li>
				<li class="span4">
					<a href="javascript:myimage('http://net-dolgov.com/images/banner(1).jpg')" class="thumbnail">
						<img src="http://net-dolgov.com/images/banner(1).jpg">
					</a>
				</li>
				<li class="span4">
					<a href="javascript:myimage('http://jo-jo.ru/uploads/posts/2012-03/1332232535_mafia_17.jpg')" class="thumbnail">
						<img src="http://jo-jo.ru/uploads/posts/2012-03/1332232535_mafia_17.jpg">
					</a>
				</li>
			
			</ul>
				</div>
			</div>
		</div>
		<div class="span4 well">
		<h1></h1>
		<h1>Выбивание долгов с физических лиц</h1>

			<p>Во многих странах кредитные программы помогают решать финансовые 
			проблемы, но только в нашей стране процент невозвратов по кредитным 
			обязательствам поражает своим количеством.</p>
			
			<p>Все чаще физические лица отказываются выполнять кредитные 
			обязательства, вынуждая банки обращаться за помощью к коллекторам. Для 
			многих коллекторских агентств <strong>возврат долгов с физических лиц</strong>
			 является основной специализацией, но лишь единицы оказывают данные 
			услуги в частном порядке, помогая вернуть долги рядовым обывателям.</p>
			
			<p>К сожалению, все чаще приходится напоминать должникам о долговом возврате нетрадиционными методами.</p>
			
			<p>Мы имеем возможность не только провести выбивание долгов старыми 
			проверенными методами, но и воздействовать на физическое лицо вполне 
			цивилизованно, побудив его избавиться от долговых обязательств.</p>
			
			<p>Возврат долгов с физических лиц, которым занимаются профессионалы 
			нашей компании, позволит клиенту получить в срок одолженную сумму. В 
			стремлении решить вопрос с возвратом долга мирными методами, большинство
			 клиентов предпочитают использовать:</p>
			
			<ul>
			<li>смс сообщения;
			</li><li>регулярные телефонные звонки;
			</li><li>личные беседы;
			</li><li>отсрочки возврата.
			</li></ul>
			
			<p>Однако практика показывает, что реальный результат приносит только <strong>выбивание долгов с физических лиц</strong>,
			 которое должно проводиться профессиональными коллекторами в 
			Санкт-Петербурге. Наши специалисты при выбивании долгов используют 
			разные методы, но результат всегда положительный – долг возвращен, 
			клиент доволен.</p>
			
			<p>Ваш должник не желает урегулировать вопрос мирно? Пришло время вести 
			беседу более кардинально, используя старые проверенные еще в 90-ые годы 
			методы. Мы поможем вам вернуть долг в самые кратчайшие сроки.</p>
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