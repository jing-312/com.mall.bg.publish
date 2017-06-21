<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="/js/jquery-1.7.2.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>product_publish.jsp</title>
<script type="text/javascript">	
	
	var pub_index=1;

	function pub_load2_by_1(){
		// 获得一级分类的id参数
		var class1_id = $("#pub_class1_select option:selected").val();
		
		// 根据一级分类id加载二级分类信息
		$.getJSON("js/json/fl2_"+class1_id+".js",function(json){
			//$(json).each(function(i,class2){});
			$("#pub_class2_select").empty();
			$.each(json,function(i,class2){
				var option = "<option value="+class2.id+">"+class2.flmch2+"</option>"
				$("#pub_class2_select").append(option);				
			});
		});
		
		// 根据一级分类加载品牌信息
		$.getJSON("js/json/tm_"+class1_id+".js",function(json){
			//$(json).each(function(i,class2){});
			$("#pub_tm_select").empty();
			$.each(json,function(i,tm){
				var option = "<option value="+tm.id+">"+tm.ppmch+"</option>"
				$("#pub_tm_select").append(option);				
			});
		});
	}
	
	function img_click(index){
		$("#pub_img_file_"+index).click();	
	}
	
	
	function new_img_file(index){
		// 让符号图片显示缩略图
		var imgFile = $("#pub_img_file_"+index)[0].files[0];
		var url = window.URL.createObjectURL(imgFile);
		$("#pub_img_"+index)[0].src=url;
		pub_index++;
		if(pub_index<6){
			// 创建一个新的图片对象和符号图片
			var a = "<div id='pub_img_div_"+pub_index+"' style='width:50px;height:50px;border:solid 1px #666;'>";
			var b = "<input name='files' type='file' id='pub_img_file_"+pub_index+"' style='display:none;' onchange='new_img_file("+pub_index+")'/>";
			var c="<img id = 'pub_img_"+pub_index+"' src='img/upload_hover.png' width='50px' height='50px' style='cursor:pointer;' onclick='img_click("+pub_index+")'>";
			var d = "</div>";
			$("#pub_img_div_"+index).after(a+b+c+d);
			$("#pub_ts").html("您还可以上传"+(5-index)+"张图片");
		}else{
			$("#pub_ts").html("不要再上传了");
		}
	}
</script>
</head>
<body>
	<hr>
	<form action="${pageContext.request.contextPath}/save_product.do" method="post" enctype="multipart/form-data">
		一级分类：<select name="flbh1" id="pub_class1_select" onchange="pub_load2_by_1()">
					<option value="6">服装鞋帽</option>
					<option value="7">家用电器</option>
					<option value="8">电脑办公</option>
					<option value="9">清洁用品</option>
		         </select><br>
		         
		二级分类：<select name="flbh2" id="pub_class2_select"></select><br>
		商标：<select name="pp_id" id="pub_tm_select"></select><br>
		<hr>
		商品名称:<input name="shp_mch" type="text" /><br>
		商品描述:<input name="shp_msh" type="text" /><br>
		
		上传图片<div id="pub_ts"></div><br>
		<div id="pub_img_div_1" style="width:50px;height:50px;border:solid 1px #666;">
			<input name="files" type="file" id="pub_img_file_1" style="display:none;" onchange="new_img_file(1)"/>
			<img id = "pub_img_1" src="img/upload_hover.png" width="50px" style="cursor:pointer;" onclick="img_click(1)">
		</div>
		<input type="submit" value="发布商品" />
	</form>
	
</body>
</html>