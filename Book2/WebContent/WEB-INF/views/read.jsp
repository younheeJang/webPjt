<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	function getList(bookb_num) {
		$.ajax({	
					url : "${pageContext.request.contextPath}/commentList.do?bookb_num="+bookb_num,
					type : "get",
					dataType : "xml",
					success : function(data) {
						var table = "";
						$(data).find("comment").each(function() {
								var bookc_level = $(this).find("bookc_level").text();
								var level = "";
									for(var i=0; i<bookc_level; i++){
										level += '　';
									}
											table += "<tr id='cName_"+ $(this).find("comment_num").text()+ "'>";
											table += "<td width="+'20%'+" align="+'left'+">"+level+" "+$(this).find("writer").text()+": "+"</td>";
											table += "<td width="+'50%'+" align="+'left'+">"+ $(this).find("content").text()+ "</td>";
											table += "<td width="+'20%'+" align="+'left'+">"+ $(this).find("write_date").text()+ "</td>";
											table+="<td>"
											table+= "<input type='button' onclick='cdelete(this)' value='delete' id='cDel_"+$(this).find("comment_num").text()+ "' class='cDelete_"+ $(this).find("comment_num").text()+ "' />";
											table+= "<input type='button' onclick='creply(this)' value='write' id='cId_"+$(this).find("comment_num").text()+ "' class='cName_"+ $(this).find("comment_num").text()+ "' />";
											table+= "<hr>";
											table += "</tr>";
										});
						$("#"+bookb_num).append(table);
					},
					 error:function(ex){
							alert(ex)
						}
				});
	
	}	// getList()끝

	function creply(ccc) {
		var bb = $(ccc).attr("class");
		var cc = bb.split("cName_");
		var reply ='';
		reply += '<form name="sendReply" id="sendReply" method="post">';
		reply += '	<input type="hidden" name="con" value="">';
		reply += '	<input type="hidden" name="bookb_num" value="${readBoard.bookb_num}">';
		reply += '	<input type="hidden" name="p" value="${page}"> ${readBoard.writer}';
		reply += '		<textarea name="content" cols="60%" rows="2"></textarea>';
		reply += '	pw:<input type="password" name="comment_pw" size="10">'; 
		reply += '	<input type="button" value="submit" onclick="submitreply()">';
		reply += '</form>';
		$("#sendReply").remove();
		$("#"+bb).after(reply);
		$("input[name='con']").attr("value", cc[1]);
	}

	function recommend() {
		$.ajax({
			url : "processUpDown.do",
			method : "post",
			data : {code : "up", bookb_num:"${readBoard.bookb_num}", bb_code:"${readBoard.bb_code}"}, 
			datatype : "text",
			success : function(result) {
				if(result != "null"){
				var book = JSON.parse(result);
				$("#bookup").text(book.recommend);
				$("#bookdown").text(book.opposite);
				}else{
					alert("추천 하루 한번");
				}
			},
			error : function(ex) {
				alert(ex);
			}
		})
	}
	
	function opposite() {
		$.ajax({
			url : "processUpDown.do",
			method : "post",
			data : {code : "down", bookb_num:"${readBoard.bookb_num}", bb_code:"${readBoard.bb_code}"}, 
			datatype : "text",
			success : function(result) {
				if(result != "null"){
				var book = JSON.parse(result);
				$("#bookup").text(book.recommend);
				$("#bookdown").text(book.opposite);
				}else{
					alert("반대 하루 한번");
				}
			},
			error : function(ex) {
				alert(ex);
			}
		})
	}

function submitreply() {
		var bookb_num = "${readBoard.bookb_num}";
		 $.ajax({
             url : "${pageContext.request.contextPath}/comment.do?bookb_num="+bookb_num,
             type : "get",
             dataType : "text",
             data : $("#sendReply").serialize(), // 파라미터를 직렬화
             success : function(data) {
                 if(data == 1){
                     alert("success send commentReply");
                     $("#"+bookb_num).empty();
						getList(bookb_num);
                     $("textarea").val("");
                     $("input[type=password]").val("");
                 }else{
                     alert("insert commentReply fail");    
                 }
             },
             error:function(ex){
					alert(ex)
				}
         })
	}
	
	$(function() {
		var bookb_num = $("input[name=bookb_num]").val();
		getList(bookb_num);
		
		$("#horrorList").click(function() {
							var bb_code = $(this).val();
							location.href = "${pageContext.request.contextPath}/horror.do?bb_code="
									+ bb_code;
		return false;				
		})

			
		 $("#submit").click(function() {
	            $.ajax({
	                url : "${pageContext.request.contextPath}/comment.do?bookb_num="+bookb_num,
	                type : "get",
	                dataType : "text",
	                data : $("#sendComment").serialize(), // 파라미터를 직렬화
	                success : function(data) {
	                    if(data == 1){
	                        alert("success send comment");
	                        $("#"+bookb_num).empty();
							getList(bookb_num);
	                        $("textarea").val("");
	                        $("input[type=password]").val("");
	                    }else{
	                        alert("insert comment fail");    
	                    }
	                },
	                error:function(ex){
						alert(ex)
					}
	            })
		 return false;		
		 })      		

	$.ajax({
			url : "processUpDown.do",
			method : "post",
			data : {code : "check", bookb_num:"${readBoard.bookb_num}", bb_code:"${readBoard.bb_code}"}, 
			datatype : "text",
			success : function(result) {
				if(result != "null"){
				var book = JSON.parse(result);
				$("#bookup").text(book.recommend);
				$("#bookdown").text(book.opposite);
				}
			},
			error : function(ex) {
				alert(ex);
			}
		})
		
		$(".genre").click(function(){
			 var selectedGenre = $(this).attr('value'); 
			
			 if(selectedGenre=="horror"){
				 var bb_code =$(this).attr('id');
			 location.href = "horror.do?bb_code="+bb_code;
			 }
			 if(selectedGenre=="romance"){
				 var bb_code =$(this).attr('id');
			 location.href = "horror.do?bb_code="+bb_code;
			 }
			 if(selectedGenre=="cook"){
				 var bb_code =$(this).attr('id');
			 location.href = "horror.do?bb_code="+bb_code;
			 }
			 if(selectedGenre=="travel"){
				 var bb_code =$(this).attr('id');
			 location.href = "horror.do?bb_code="+bb_code;
			 }
			 return false;
			 });	 


})
</script>
<link type="text/css" rel="stylesheet" href="resource/style.css">
<title></title>
<style type="text/css">
.title{
color: white;
letter-spacing: .20em;
text-shadow: 1px -1px 0 #767676, -1px 2px 1px #737272, -2px 4px 1px #767474, -3px 6px 1px #787777, -4px 8px 1px #7b7a7a, -5px 10px 1px #7f7d7d, -6px 12px 1px #828181, -7px 14px 1px #868585, -8px 16px 1px #8b8a89, -9px 18px 1px #8f8e8d;
}
.genre {
font: 25px/25px Georgia,serif; padding: 10px; border-radius: 10px; border: 2px solid rgb(28, 110, 164); border-image: none; background-image: radial-gradient(at center, rgb(28, 110, 164) 0%, rgb(35, 136, 203) 14%, rgb(20, 78, 117) 100%); color: rgb(223, 255, 164); text-transform: none; text-decoration: none; box-shadow: 5px 5px 15px 5px #000000; display: inline-block;}
.genre:hover {
background: #1C6EA4; }
.genre:active {
background: #144E75; }

</style>
</head>
<body>


	<header>
		<h1 class="gradient">Book Review</h1>
		<h5>dreamING of breaking away from the routine of daily life</h5>
	</header>
	
	


	<section>
	
		<div class="col_3 sidebar">
			<div class="loginStation">
				${sessionScope.loginNick } welcome <a href="checkPassword.do">memberinfo</a><br>
				<a href="logout.do">logout</a>
			</div>

			<ul>
				<li id="bb101" value="horror" class="genre">HORROR</li>
				<li id="bb102" value="romance" class="genre">ROMANCE</li>
				<li id="bb103" value="cook" class="genre">COOK</li>
				<li id="bb104" value="travel" class="genre">TRAVEL</li>
			</ul>
		</div>


		<article class="col_9">
		<div id="scroller" style="overflow:auto; width:100%; height:400px;">
			<h1>read page</h1>
			<table border="1">
				<tr >
					<td width="10%">num:</td>
					<td width="90%">${num}</td>
				</tr>

				<tr>
					<td width="10%">book_name</td>
					<td width="90%">${readBoard.book_name}</td>
				</tr>


				<tr>
					<td width="10%">title:</td>
					<td width="90%">${readBoard.title}</td>
				</tr>

				<c:choose>
					<c:when test="${empty fileList}">
						<tr>
							<td>file:</td>
							<td>no list uploaded</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${fileList}" var="fileList">
							<tr>
								<td>${fileList.bookb_num}</td>
								<td><a
									href="download.do?bookb_num=${fileList.bookb_num}&file_num=${fileList.file_num}">${fileList.original_name}</a>
								</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>



				<tr>
					<td width="10%">writer:</td>
					<td width="90%">${readBoard.writer}</td>
				</tr>
				<tr>
					<td width="10%">content:</td>
					<td width="90%">${readBoard.content}</td>
				</tr>

				<tr>
					<td colspan="2"><button id="horrorList" value="${readBoard.bb_code}">BoardList</button>
				<%-- <a href="bookPage.do" target="_blank"><button id="bookAPI" value="bookAPI">bookAPI</button></a>
				<a href="everNote.do?bookb_num=${readBoard.bookb_num}"><button>evernote</button></a>
			 --%>	<!-- <a href="bookPage.do" target="_blank">새창으로 가자</a> -->
						<%-- <%-- <a href="updateCheck.do?boardNum=${readBoard.boardNum}"><button>modify</button></a>
						<a href="deleteCheck.do?boardNum=${readBoard.boardNum}"><button>delete</button></a>
						<a href="replyForm.do?boardNum=${readBoard.boardNum}&p=${page}"><button>reply</button></a> --%>
					</td>
					<td>
						<button id="recommend" onclick="recommend()">↑</button><label for="recommend" id="bookup"></label> 
						 <button id="opposite" onclick="opposite()">↓</button><label for="opposite" id="bookdown"></label>
					</td>
				</tr>

			</table>


			<input type="hidden" name="bookb_num" value="${readBoard.bookb_num}">
			<input type="hidden" name="p" value="${page}">

			<div id="comment" align="center">
				<hr>
				<form name="sendComment" id="sendComment" method="post">
					<input type="hidden" name="bookb_num"
						value="${readBoard.bookb_num}"> <input type="hidden"
						name="p" value="${page}"> ${readBoard.writer}
					<textarea name="content" cols="60%" rows="2"></textarea>
					pw:<input type="password" name="comment_pw" size="10"> <input
						type="button" value="submit" id="submit">
					<hr>
				</form>
			<div id="${readBoard.bookb_num}">
			
			</div>
			
	
			</div>
			</div>
		</article>
	
	</section>
	
	<footer>
		<p>Footer</p>
	</footer>



</body>
</html>