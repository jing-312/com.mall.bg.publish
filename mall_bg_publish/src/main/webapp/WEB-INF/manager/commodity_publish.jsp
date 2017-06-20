<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品发布页面</title>
<script type="text/javascript" src="/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
	function pub_load2_by_1(){
		//
		var class1_id = $("#pub_class1_select option:selected").val();
		
		$.getJSON("js/json/fl2_"+class1_id+".js",function(json){
			//$(json).each(function(i,class2){});
			$("#pub_class2_select").empty();
			$.each(json,function(i,class2){
				var option = "<option value="+class2.id+">"+class2.flmch2+"</option>"
				$("#pub_class2_select").append(option);				
			});
		});
	}
</script>
</head>
<body>
	<hr>
	一级分类：<select name="flhb1" id="pub_class1_select" onchange="pub_load2_by_1()" >
				<option value="6">服装鞋帽</option>
				<option value="7">家用电器</option>
				<option value="8">电脑办公</option>
				<option value="9">清洁用品</option>
				
			</select><br><br><br><br>
	二级分类：<select name="flbh2" id="pub_class2_select"></select><br>
	选择品牌：<select></select><br><br><br><br>
	<hr>
</body>
</html>