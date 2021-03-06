<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="include/resource.jsp"></jsp:include>
<title>Регистрация</title>
</head>
<body>
<jsp:include page="include/header.jsp"></jsp:include>
<div class="container-fluid"> 
<div class="row-fluid">
<div class="span3"> 
	<jsp:include page="include/menu.jsp"></jsp:include>
</div>
<div class="span9">
 <form:form class="form-horizontal" action="" method="post" commandName="accountRegistrationForm">
 <h2>Регистрация</h2>
<br>
  <div class="well">
   		<legend>Реквизиты счета</legend>
   		<div class=" pagination-centered">
		   <form:errors class="label" path=""/>
		</div>
   		<div class="row-fluid">
   			<div class="span6">
   				
        			<fieldset>
       					  <div class="control-group">
           					 <form:label class="control-label" for="email" path="email">Email *</form:label>
            				 <div class="controls">
            				    <form:input path="email" type="text" class="input" title="Ваш Email" placeholder="Email" id="email" name="email"/>
             			 	 		<div>
             			 	 			<form:errors class="label" path="email"/>
             			 	 	    </div>
             			 	 </div>
          				  </div>
          				   <div class="control-group">
           					 <form:label path="password" class="control-label" for="password">Пароль *</form:label>
            				 <div class="controls">
             				 	<form:input path="password" type="Password" class="input" title="Ваш пароль" placeholder="Пароль" id="password" name="password"/>
             			 	 		<div>
             			 	 			<form:errors class="label" path="password"/>
                			 	     </div>
             			 	 </div>
          				  </div>
          			</fieldset>
          		
   			</div>
   			<div class="span6">
   				 
        			<fieldset>
       					  <div class="control-group">
           					 <form:label path="repeatEmail" class="control-label" for="repeatEmail">Повторите Email *</form:label>
            				 <div class="controls">
             				 <form:input path="repeatEmail" type="text" class="input" title="Повторите Ваш Email" 
             				 		placeholder="Повторите Email" id="repeatEmail" name="repeatEmail"/>
             			 	 	<div>
             			 	 		<form:errors class="label" path="repeatEmail"/>
             			 	 	</div>
             			 	 </div>
          				  </div>
          				   <div class="control-group">
           					 <form:label path="repeatPassword" class="control-label" for="repeatPassword">Повторите пароль *</form:label>
            				 <div class="controls">
             				 <form:input path="repeatPassword" type="Password" class="input" title="Повторите Ваш пароль"
             				 	 placeholder="Повторите Ваш пароль" id="repeatPassword" name="repeatPassword"/>
             			 	 	<div>
           			 	 				<form:errors class="label" path="repeatPassword"/>
           			 	 		</div>
             			 	 </div>
          				  </div>
          			</fieldset>
          		
   			</div>  
   		</div>
   		
  </div>
  <div class="row-fluid">
            <div class="span6 well">
              <legend>Персональные данные</legend>
               
        			<fieldset>
       					  <div class="control-group">
           					 <form:label path="firstName" class="control-label" for="firstName">Имя *</form:label>
            				 <div class="controls">
             					 <form:input path="firstName" type="text" class="input" id="firstName" name="firstName" title="Ваше имя" placeholder="Имя"/>
             			 	 		<div>
             			 	 			<form:errors class="label" path="firstName"/>
              			 	 		</div>
             			 	 </div>
          				  </div>
          				    <div class="control-group">
           					 <form:label path="lastName" class="control-label" for="lastName">Фамилия</form:label>
            				 <div class="controls">
             					 <form:input path="lastName" type="text" class="input" id="lastName" name="lastName" title="Ваше имя" placeholder="Фамилия"/>
             			 	 		<div>
             			 	 			<form:errors class="label" path="lastName"/>
             			 	 		</div>
             			 	 </div>
          				  </div>
						  <div class="control-group">
           					 <form:label path="phone" class="control-label" for="phone">Телефон</form:label>
            				 <div class="controls">
             				 	<form:input path="phone" type="text" class="input" id="phone" name="phone" title="Ваш телефон" placeholder="Телефон"/>
             			 	 		<div>
             			 	 			<form:errors class="label" path="phone"/>
             			 	 		</div>
             			 	 </div>
          				  </div>
          				  <div class="control-group">
           					 <form:label path="street" class="control-label" for="street">Улица</form:label>
            				 <div class="controls">
	             				 <form:input path="street" type="text" class="input" name="street" id="street" title="Улица" placeholder="Улица"/>
	             				 	<div>
             			 	 			<form:errors class="label" path="street"/>
             			 	 		</div>
             			 	 </div>
          				  </div>
          				  <div class="control-group">
           					 <form:label path="city" class="control-label" for="city">Город</form:label>
            				 <div class="controls">
             				 	<form:input path="city" type="text" class="input" id="city" name="city" title="Город" placeholder="Минск"/>
             				 		<div>
             			 	 			<form:errors class="label" path="city"/>
             			 	 		</div>
             			 	 </div>
          				  </div>
          				  <div class="control-group">
           					 <form:label path="country" class="control-label" for="country">Страна</form:label>
           					 <div class="controls">
            				  <form:select path="country" id="country" name="country" title="Страна">
              					 <form:option value="">выберите</form:option>
              					 <form:option value="Belarus">Беларусь</form:option>
               					 <form:option value="Russia">Россия</form:option>
                				 <form:option value="Ukraine">Украина</form:option>
                				 <form:option value="Kazachstan">Казахстан</form:option>
               					 <form:option value="OtherWorld">Остальной мир</form:option>
            				  </form:select>
            				  		<div>
             			 	 			<form:errors class="label" path="country"/>
             			 	 		</div>
            				</div>
         				 </div>
          				  <div class="control-group">
           					 <form:label path="webSite" class="control-label" for="webSite">Вебсайт</form:label>
            				 <div class="controls">
             				 	<form:input path="webSite" type="text" class="input" id="webSite" name="webSite" title="Вебсайт" placeholder="http://google.com"/>
             				 		<div>
             			 	 			<form:errors class="label" path="webSite"/>
             			 	 		</div>
             			 	 </div>
          				  </div>
        </fieldset>
      
            </div>
            <div class="span6 well">
              <legend>Дополнительная информация</legend>
                         
                    
        			  <fieldset>
       					  <div class="control-group">
           					 <form:label path="gender" class="control-label" for="gender">Пол *</form:label>
            				 <div class="controls">
             					 <label class="radio inline">
               					 	<form:radiobutton path="gender" value="male" name="gender" id="gender"/>
               					 	Мужской
             					 </label>
              					<label class="radio inline">
               						 <form:radiobutton path="gender" value="female" name="gender" id="gender"/>
               						 Женский
              					</label>
              					    <div>
              			 	 			<form:errors class="label" path="gender"/>
             			 	 		</div>
             			 	 </div>
          				  </div>
						 <div class="control-group">
           					 <form:label path="birthDate" class="control-label" for="birthDate">День рождения</form:label>
            				 <div class="controls inline">
            				     <form:select path="birthDate" id="birthDate" name="birthDate" class="span4" title="Ваш день рождения">
              					 	<form:option value="">выберите</form:option><form:option value="1">1</form:option><form:option value="2">2</form:option><form:option value="3">3</form:option><form:option value="4">4</form:option><form:option value="5">5</form:option><form:option value="6">6</form:option><form:option value="7">7</form:option><form:option value="8">8</form:option><form:option value="9">9</form:option><form:option value="10">10</form:option><form:option value="11">11</form:option><form:option value="12">12</form:option><form:option value="13">13</form:option><form:option value="14">14</form:option><form:option value="15">15</form:option><form:option value="16">16</form:option><form:option value="17">17</form:option><form:option value="18">18</form:option><form:option value="19">19</form:option><form:option value="20">20</form:option><form:option value="21">21</form:option><form:option value="22">22</form:option><form:option value="23">23</form:option><form:option value="24">24</form:option><form:option value="25">25</form:option><form:option value="26">26</form:option><form:option value="27">27</form:option><form:option value="28">28</form:option><form:option value="29">29</form:option><form:option value="30">30</form:option><form:option value="31">31</form:option>
               					 </form:select>
               					     <div>
              			 	 			<form:errors class="label" path="birthDate"/>
             			 	 		</div>
            				 </div>
          				  </div>
          				  <div class="control-group">
           					 <form:label path="birthMonth" class="control-label" for="birthMonth">Месяц</form:label>
            				 <div class="controls inline">
            				     <form:select path="birthMonth" id="birthMonth" title="Месяц" name="birthMonth">
              					 	<form:option value="">выберите</form:option><form:option value="January">Январь</form:option><form:option value="February">Февраль</form:option><form:option value="March">Март</form:option><form:option value="April">Апрель</form:option><form:option value="May">Май</form:option><form:option value="June">Июнь</form:option><form:option value="July">Июль</form:option><form:option value="August">Август</form:option><form:option value="September">Сентябрь</form:option><form:option value="October">Октябрь</form:option><form:option value="November">Ноябрь</form:option><form:option value="December">Декабрь</form:option>
               					</form:select>
               					    <div>
              			 	 			<form:errors class="label" path="birthMonth"/>
             			 	 		</div>
            				 </div>
          				  </div>
          				  <div class="control-group">
           					 <form:label path="birthYear" class="control-label" for="birthYear">Год</form:label>
            				 <div class="controls">
             				 	<form:input path="birthYear" type="text" class="input span3" id="birthYear" name="birthYear" title="Год" placeholder="Год"/>
             			 	 </div>
             			 	     <div>
              			 	 			<form:errors class="label" path="birthYear"/>
             			 	 		</div>
          				  </div>
          				  <div class="control-group">
           					 <form:label path="nationality" class="control-label" for="nationality">Национальность</form:label>
            				 <div class="controls inline">
            				     <form:select path="nationality" id="nationality" name="nationality" title="Ваша национальность">
              					 	<form:option value="">выберите</form:option><form:option value="Russian">Русский</form:option><form:option value="Belarussian">Беларус</form:option><form:option value="Ukranian">Украинец</form:option><form:option value="Burzhuy">Буржуй</form:option>
               					</form:select>
            				 </div>
            				     <div>
              			 	 			<form:errors class="label" path="nationality"/>
             			 	 		</div>
          				  </div>
          				  <div class="control-group">
           					 <form:label path="children" class="control-label" for="children">Дети</form:label>
            				 <div class="controls inline">
            				     <form:checkbox path="children" class="checkbox" id="children" name="children"/>
              				 </div>
              				     <div>
              			 	 			<form:errors class="label" path="children"/>
             			 	 		</div>
          				  </div>
        			</fieldset>
      
      		<legend>Полезная информация</legend>
      		<div class="control-group">
            <form:label path="textarea" class="control-label" for="textarea"></form:label>
            <div class="controls">
              <form:textarea path="textarea" class="input-xlarge span20" id="textarea" name="textarea" rows="3" title="Что угодно, что Вы хотите рассказать о себе"></form:textarea>
            </div>
                <div>
              		<form:errors class="label" path="textarea"/>
             	</div>
          </div>
            </div><!--/span-->
  

</div>
	<div class="row-fluid">
			<div class="span8 well">
				<legend>Условия и рассылки</legend>
				<form:label path="conditions" class="checkbox">
					<form:checkbox path="conditions" value="agree" id="conditions" name="conditions"/> * Я согласен с <a href="conditions.jsp" target="_blank">условиями</a>
					<form:errors class="label" path="conditions"/>
				</form:label>
				<label class="checkbox">
					<input value="agree" type="checkbox" id="promotions" name="promotions"> Я хочу получать персональные предложения на вашем сайте
				</label>
				<label class="checkbox">
					<input value="agree" type="checkbox" id="partners" name="partners"> Разрешение партнерам на рассылку персонализированных предложений и связанных с ними услуг
				</label>
			</div>
			<div class="span4">
				
					<input class="btn btn-primary btn-large" type="submit" value="Регистрация"> <i class="icon-forward icon-white"></i></input>
               		
            		
            	
			</div>
	</div>
	</form:form>
</div>
</div>
</div>

<hr class="soften">

<jsp:include page="include/footer.jsp"></jsp:include>
</body>
</html>