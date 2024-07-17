<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./resources/css/searchList.css">
<link rel="stylesheet" href="./resources/css/main.css">
<link rel="stylesheet" href="./resources/css/search.css">
<!-- 다크 테마를 기본 값으로-->
<link id="theme-setting" rel="stylesheet"
	href="./resources/css/dark_theme.css">
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<body class="theme">
	<div id="all">
		<div id="menuall">
			<%@ include file="menuAll.jsp"%>
		</div>
		<div id="main">
			<!--메인 컨텐츠는 여기에 작성 부탁합니당-->
			<form action="searchList" method="get"
				onsubmit="return searchSubmit()">
				<div id="searchBar" class="theme">
					<input type="search" id="search" placeholder="SEARCH"
						autocomplete='off' name="keyWord">
					<div id="miniSearch">
						<div id="miniSearchTitle">
							<span id="searDel">모두 지우기</span>
						</div>
						<table id="miniSearchTable">

						</table>
					</div>
				</div>
			</form>
			<div id="searMenuBar" class=theme>
				<ul id="searMenu">
					<li><span class="keyType" id="nowKeyType">인기</span></li>
					<li><span class="keyType">최신</span></li>
					<li><span class="keyType">마음</span></li>
					<li><span class="keyType">리포스트</span></li>
					<li><span class="keyType">사용자</span></li>
				</ul>
			</div>
			<div id="searResult">
				<div id="searchResultAll">
				<c:choose>
					<c:when test="${info ne null}">
						<div id="searMain">
							<c:choose>
							<c:when test='${key.keyType ne "사용자"}'>
								<c:forEach items="${info}" var="mp">
								<c:set var="filenameLength" value="${fn:length(mp.fileName)}" />
								<div class="p_inf">
									<a href="userprofile?id=${mp.id}" class="userprofilealink">
										<div class="proimg">
											<img class="profileImg" src="./resources/img/프로필.png">
											<c:forEach items="${profile}" var="pr">
												<c:if test="${mp.id eq pr.id }">
													<c:choose>
														<c:when test="${pr.photo != null}">
															<img class="profileImg" src="download?filename=${pr.photo }">
														</c:when>
														<c:when test="${pr.photo == null}">
															<img class="profileImg" src="./resources/img/프로필.png">
														</c:when>
													</c:choose>
												</c:if>
											</c:forEach>
										</div>
									</a> 
									<c:forEach items="${profile }" var="ap">
										<c:if test="${mp.id eq ap.id}">
											<span class="p_id">${ap.nickName }</span>
										</c:if>
									</c:forEach>
									<span class="p_date">${mp.p_date} </span>
								</div>

								<a href="myPost?no=${mp.no}" style="cursor: pointer;"
									class="p_alink" onclick="p_show(${mp.no})"> <!-- 프로필 아이디 -->
									<div class="p_cont theme">${mp.cont }</div> <c:choose>
										<c:when test="${filenameLength eq 0}">
											<div class="p_files" style="display: none">
												<c:forEach items="${mp.fileName }" var="file"
													varStatus="status">
													<div class="item">
														<img src="download?filename=${status.current}">
													</div>
												</c:forEach>
											</div>
										</c:when>
										<c:when test="${filenameLength eq 1}">
											<div class="p_files">
												<c:forEach items="${mp.fileName }" var="file"
													varStatus="status">
													<div class="item">
														<img src="download?filename=${status.current}">
													</div>
												</c:forEach>
											</div>
										</c:when>
										<c:when test="${filenameLength eq 2}">
											<div class="p_files"
												style="display: grid; grid-template-columns: 1fr 1fr">
												<c:forEach items="${mp.fileName }" var="file"
													varStatus="status">
													<div class="item" style="">
														<img src="download?filename=${status.current}">
													</div>
												</c:forEach>
											</div>
										</c:when>
										<c:when test="${filenameLength eq 3}">
											<div class="p_files"
												style="display: grid; grid-template-columns: 1fr 1fr; grid-template-rows: 1fr 1fr">
												<c:forEach items="${mp.fileName }" var="file"
													varStatus="status">
													<c:choose>
														<c:when test="${status.index eq 0}">
															<div class="item" style="grid-row: 1/3">
																<img src="download?filename=${status.current}">
															</div>
														</c:when>
														<c:otherwise>
															<div class="item">
																<img src="download?filename=${status.current}">
															</div>
														</c:otherwise>
													</c:choose>

												</c:forEach>
											</div>
										</c:when>
										<c:when test="${filenameLength eq 4}">
											<div class="p_files"
												style="display: grid; grid-template-columns: 1fr 1fr; grid-template-rows: 1fr 1fr;">
												<c:forEach items="${mp.fileName }" var="file"
													varStatus="status">
													<div class="item">
														<img src="download?filename=${status.current}">
													</div>
												</c:forEach>
											</div>
										</c:when>
										<c:when test="${filenameLength eq 5}">
											<div class="p_files"
												style="display: grid; grid-template-columns: 1fr 1fr; grid-template-rows: 1fr 1fr">
												<c:forEach items="${mp.fileName }" var="file"
													varStatus="status">
													<c:choose>
														<c:when test="${status.index eq 3}">
															<div class="item">
																<img src="download?filename=${status.current}">
																<svg xmlns="http://www.w3.org/2000/svg" width="50"
																	height="50" fill="#ff00bf" class="bi bi-plus-circle"
																	viewBox="0 0 16 16"> <path
																		d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16" /> <path
																		d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4" /> </svg>
															</div>
														</c:when>
														<c:when test="${status.index eq 4}">
														</c:when>
														<c:otherwise>
															<div class="item">
																<img src="download?filename=${status.current}">
															</div>
														</c:otherwise>
													</c:choose>
												</c:forEach>
											</div>
										</c:when>
									</c:choose>
								</a>
								<!-- 여기부터 리포스트 -->
				<c:if test="${mp.re_no != 0 }">
					<span class="reposted-mark-span">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-share" viewBox="0 0 16 16">
                   			<path d="M13.5 1a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3M11 2.5a2.5 2.5 0 1 1 .603 1.628l-6.718 3.12a2.5 2.5 0 0 1 0 1.504l6.718 3.12a2.5 2.5 0 1 1-.488.876l-6.718-3.12a2.5 2.5 0 1 1 0-3.256l6.718-3.12A2.5 2.5 0 0 1 11 2.5m-8.5 4a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3m11 5.5a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3" />
               			</svg> REPOSTED
					</span>
					<div class="repost-container theme">
						<input type="hidden" value="${mp.re_no }">
						<c:set var="repFlag" value="false" />
						<c:forEach items="${rePost}" var="repost">
							<c:if test="${not repFlag }">
								<c:if test="${repost.no == mp.re_no }">
									<c:set var="repFlag" value="true" />
									<div class="repost-attach-div">
										<c:if test="${not empty repost.fileName}">
											<div class="repost-attach-img-div">
												<img src="download?filename=${repost.fileName[0]}">
											</div>
										</c:if>
									</div>					
									<div class="repost-profile-div">
										<div class="repost-profile-img-div">
														<c:choose>
															<c:when test="${repost.photo != null}">
																<img src="download?filename=${repost.photo}">
															</c:when>
															<c:otherwise>
																<img src="/sns/resources/img/프로필.png">
															</c:otherwise>
														</c:choose>
													</div>
													<div class="repost-names-div">
														<input type="hidden" value="${repost.id}">
														<span class="repost-nickname-span">${repost.nickName }</span>
													</div>
									</div>
									<div class="repost-cont-div">
										<span class="repost-cont-span">
											${repost.cont }
										</span>
									</div>
								</c:if>
							</c:if>
						</c:forEach>
					</div>
				</c:if>
				<!-- 여기까지 리포스트 -->
								<input type="hidden" value="0" class="p_lovehid${mp.no}">
								<input type="hidden" value="${mp.no}" id="p_lovehid${mp.no}">
								<div class="mpfooter theme">
									<div>
										<button type="button" class="p_lovebut${mp.no } theme"
											onclick="p_love(${mp.no })">
											<svg xmlns="http://www.w3.org/2000/svg" width="25"
												height="25" fill="currentColor" class="bi bi-heart-fill"
												viewBox="0 0 16 16"> <path fill-rule="evenodd"
													d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314" /> </svg>
										</button>
										<span class="footspan p_lovecnt${mp.no}">${mp.p_love}</span>
									</div>
									<div>
										<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
											fill="currentColor" class="bi bi-chat-right-dots-fill"
											viewBox="0 0 16 16"> <path
												d="M16 2a2 2 0 0 0-2-2H2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h9.586a1 1 0 0 1 .707.293l2.853 2.853a.5.5 0 0 0 .854-.353zM5 6a1 1 0 1 1-2 0 1 1 0 0 1 2 0m4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0m3 1a1 1 0 1 1 0-2 1 1 0 0 1 0 2" /> </svg>
										<span class="footspan">${mp.commCnt}</span>
									</div>
									<div>
										<button type="button" class="p_repostbut${mp.no } theme"
											onclick="repost(${mp.no})">
											<svg xmlns="http://www.w3.org/2000/svg" width="25"
												height="25" fill="currentColor" class="bi bi-share"
												viewBox="0 0 16 16"> <path
													d="M13.5 1a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3M11 2.5a2.5 2.5 0 1 1 .603 1.628l-6.718 3.12a2.5 2.5 0 0 1 0 1.504l6.718 3.12a2.5 2.5 0 1 1-.488.876l-6.718-3.12a2.5 2.5 0 1 1 0-3.256l6.718-3.12A2.5 2.5 0 0 1 11 2.5m-8.5 4a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3m11 5.5a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3" /> </svg>
										</button>
										<span class="footspan">${mp.reCnt}</span>
									</div>
									<div>
										<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-hand-index-thumb" viewBox="0 0 16 16">
		                    			<path d="M6.75 1a.75.75 0 0 1 .75.75V8a.5.5 0 0 0 1 0V5.467l.086-.004c.317-.012.637-.008.816.027.134.027.294.096.448.182.077.042.15.147.15.314V8a.5.5 0 0 0 1 0V6.435l.106-.01c.316-.024.584-.01.708.04.118.046.3.207.486.43.081.096.15.19.2.259V8.5a.5.5 0 1 0 1 0v-1h.342a1 1 0 0 1 .995 1.1l-.271 2.715a2.5 2.5 0 0 1-.317.991l-1.395 2.442a.5.5 0 0 1-.434.252H6.118a.5.5 0 0 1-.447-.276l-1.232-2.465-2.512-4.185a.517.517 0 0 1 .809-.631l2.41 2.41A.5.5 0 0 0 6 9.5V1.75A.75.75 0 0 1 6.75 1M8.5 4.466V1.75a1.75 1.75 0 1 0-3.5 0v6.543L3.443 6.736A1.517 1.517 0 0 0 1.07 8.588l2.491 4.153 1.215 2.43A1.5 1.5 0 0 0 6.118 16h6.302a1.5 1.5 0 0 0 1.302-.756l1.395-2.441a3.5 3.5 0 0 0 .444-1.389l.271-2.715a2 2 0 0 0-1.99-2.199h-.581a5 5 0 0 0-.195-.248c-.191-.229-.51-.568-.88-.716-.364-.146-.846-.132-1.158-.108l-.132.012a1.26 1.26 0 0 0-.56-.642 2.6 2.6 0 0 0-.738-.288c-.31-.062-.739-.058-1.05-.046zm2.094 2.025" />
		               					 </svg>
										<span class="footspan">${mp.shows}</span>
									</div>
								</div>
							</c:forEach>
							</c:when>
							<c:otherwise>
								<c:forEach items="${info}" var="user">
								<div class="searchResultUser">
                					<div class="searUser" style="grid-column: 1 / 2; grid-row: 1 / 3;">
                    					<div class="userPhotoCircle">
                    						<c:choose>
                    							<c:when test="${user.photo eq null}">
                    								<img class="userPhoto" src="./resources/img/프로필.png">
                    							</c:when>
                        						<c:when test="${user.photo ne null}">
                        							<img class="userPhoto" src="download?filename=${user.photo}">
                    							</c:when>
                        					</c:choose>
                    					</div>
                					</div>
                					<c:choose>
                				<c:when test="${user.bio != null && user.bio != ''}">
                				<div class="searUser" style="grid-column: 2 / 3; grid-row: 1 / 2;">
                    				<span class="userNick">
                        				${user.nickName}
                    				</span>
                    				<span class="userId">
                        				( ${user.id} )
                    				</span>
                				</div>
               					 <div class="searUser" style="grid-column: 2 / 3; grid-row: 2 / 3;">
                    				<span class="userBio">
                        				${user.bio}
                    				</span>
                				</div>
                				</c:when>
                				<c:when test="${user.bio == null || user.bio == ''}">
                					<div class="searUser" style="grid-column: 2 / 3; grid-row: 1 / 3; padding-top: 4%;">
                    				<span class="userNick">
                        				${user.nickName}
                    				</span>
                    				<span class="userId">
                        				( ${user.id} )
                    				</span>
                					</div>
                				</c:when>
                				</c:choose>
                				<div class="userFollowBtn" style="grid-column: 3 / 4; grid-row: 1 / 3;">
                					<input type="hidden" value="${user.id }">              					
                					<c:set var="followFlag" value="${fn:contains(fList, user.id) }" />
                					<c:choose>
                						<c:when test="${followFlag == true }">
                							<button type="button" value="1" class="theme">FOLLOWING</button>		
                						</c:when>
                						<c:otherwise>
                							<button type="button" value="0" class="theme">FOLLOW</button>
                						</c:otherwise>
                					</c:choose>
                				</div>
           					</div>
           					</c:forEach>
								</c:otherwise>
							</c:choose>
						</div>
					</c:when>
					<c:when test="${info eq null}">
						<div id="searchNone">
							<span>검색 결과가 존재 하지 않습니다.</span>
						</div>
					</c:when>
				</c:choose>
			</div>
		</div>
		</div>
	</div>
</body>
<script>
	let searWord;

	//검색 기록 추가
	window.onload = function() {
		$('#search').val('${key.keyWord}')
		if(localStorage.getItem('${id}') != null) {
			searWord = localStorage.getItem('${id}')
			searchList();
		}	
	}
	
	//검색 기록 띄우기
	function searchList() {
		$('#miniSearchTable').empty();
		if(localStorage.getItem('${id}') != null) {
			let myList = searWord.split('/');
			for(let i = 0; i <myList.length; i++) {
				$('#miniSearchTable').append("<tr><td class='searListWord' style='width: 90%'>"+myList[i]+"</td><td style='width: 10%; text-align: right;'><span class='searListDel'>X</span></td></tr>");	
			}
		} else {
			$('#miniSearch').css('display', 'none');
		}
	}
	
	//검색어가 없을 경우 submit x
	function searchSubmit() {
		if($('#search').val().trim() != "" && $('#search').val() != null) {
			if(localStorage.getItem('${id}') != null) {
				let myList = searWord.split('/');
				let myWord;
				for(let i = 0; i < myList.length; i++) {
					if($('#search').val() == myList[i]) {
						myWord = myList[i];
						myList.splice(i, 1)
						break;
					}
				}
				if(myWord != null) {
					if(myList.length == 0) {
						localStorage.setItem('${id}', $('#search').val())
					} else {
						searWord = "";
						for(let i = 0; i < myList.length; i++) {
							if(myList[i] != null && myList[i].trim() != "") {
								if(i == myList.length-1) {
				        			searWord += myList[i]
				        		} else {
				        			searWord += myList[i]+"/"
				        		}
							}
						}
						localStorage.setItem('${id}', $('#search').val()+"/"+searWord)
					}
				} else {
					localStorage.setItem('${id}', $('#search').val()+"/"+searWord)
				}
			} else {
				localStorage.setItem('${id}', $('#search').val())
			}
			return true;
		}
		return false;
	}
	
	//검색어 클릭 시 검색 기록 확인
	$('#search').click(function() {
		if(localStorage.getItem('${id}') != null) {
			$('#miniSearch').css('display', 'block');	
		}
	})
    
    //삭제 버튼 누를 시 값 삭제
    $('#miniSearchTable').on('click', '.searListDel', function() {
    	let index = $('.searListDel').index($(this))
    	let word = searWord.split('/')
    	word.splice(index, 1);
    	searWord = "";
    	if(word.length == 0) {
    		localStorage.removeItem('${id}')
    		searchList();
    	} else {
    		for(let i = 0; i < word.length; i++) {
        		if(i == word.length-1) {
        			searWord += word[i]
        		} else {
        			searWord += word[i]+"/"
        		}
        	}
    		localStorage.setItem('${id}', searWord);
    		searchList();
    	}
    })
    
    //모두 지우기 버튼을 누를 시
    $('#searDel').click(function() {
    	searWord = "";
    	localStorage.removeItem('${id}')
		searchList();
    })
    
    //검색어 누르면 자동으로 값 입력
    $('#miniSearchTable').on('click', '.searListWord', function() {
    	$('#search').val($(this).text());
    	$('form').submit();
    })
    
	//검색기록 안 보이게 만들기
    $('#searchBar').mouseleave(function() {
    	if($('#miniSearch').css('display') == 'block') {
    		$('#miniSearch').css('display', 'none');
    	}
    })
    
    $(document).ready(function(){
		setting();
    })
	
	// 좋아요 누른거 확인
	function setting() {
		var uid = '<%=(String) session.getAttribute("userid")%>';
		// 좋아요 누른 댓글 확인 후 아이콘 변경
		$.ajax({
			type:"POST",
			url:"chklove",
			data: {"id" : uid},
			dataType : 'json',
			cache : false,
			success:function(data) {
				$.each(data, function(index, no) {
					if($("#p_lovehid"+no).val() == no ) {
						$(".p_lovehid"+no).val(1)
						$(".p_lovebut"+no).html(`<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="red" class="bi bi-heart-fill" viewBox="0 0 16 16">
						  <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314" />
						</svg>`);	
					}
				})
				},
		 });
	}
	// 게시물 좋아요 누르기
	function p_love(no) {
		let lovenum = $(".p_lovecnt"+no).text();
		if($(".p_lovehid"+no).val()== 0) {
			$(".p_lovehid"+no).val(1)
			$(".p_lovebut"+no).html(`<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="red" class="bi bi-heart-fill" viewBox="0 0 16 16">
					  <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314" />
					</svg>`)
			$(".p_lovecnt"+no).text(Number(lovenum)+1);	
			loveAjax(no);
		}else {
			$(".p_lovehid"+no).val(0)
			$(".p_lovecnt"+no).text(Number(lovenum)-1);
			$(".p_lovebut"+no).html(`<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16">
					  <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314" />
					</svg>`)
					loveCancelAjax(no);
		}
		
	}
	// 좋아요 ajax
	function loveAjax(no) {
		$.ajax({
			type:"POST",
			url:"p_love",
			data: {"no" : no}
		})
	}
	// 좋아요 취소 ajax
	function loveCancelAjax(no) {
		$.ajax({
			type:"POST",
			url:"p_loveCancel",
			data: {"no" : no}
		})
	}
	
	// 게시물 조회수 +1 
	function p_show(no) {
		$.ajax({
			type:"GET",
			url:"p_show",
			data: {"no" : no},
			cache : false
		 })  
	}
	function repost(no) {
		location.href = `/sns/reposting?no=\${no}`;
	}
	
    
    // 추천 게시물 시작 번호
    let curRecomPage = 10;
    // 이미 로딩된 기존 컨텐츠
    let prevCont;
	function scrollEventHandler() {
		if ((window.scrollY + window.innerHeight)/document.body.clientHeight > 0.8) { // 마지막까지 스크롤 했을 때.
        	// 이벤트 지워준다.
        	document.removeEventListener('scroll', scrollEventHandler);
        	// 이미 로딩된 기존 컨텐츠의 html 객체 저장.
    		prevCont = $('#searchResultAll').html();
       		// 게시물 로딩되는 부분 새로 고침.
       		// 팔로우 한 유저의 최근 게시물을 전부 출력 했거나, 팔로우한 유저가 없을 경우
  			$('#searResult').load(`newSearchList?pageNo=\${curRecomPage}&keyWord=${key.keyWord}&keyType=${key.keyType} #searchResultAll`, function() {
  				// 새로 고침 성공 시 실행.           		
      			if ($('.p_inf').length != 0) { // 새로운 게시물이 로딩될 때
          			// 다음 페이지 시작 번호 갱신.
          			curRecomPage += 10;
          			// 제거했던 이벤트 다시 생성.
          			document.addEventListener('scroll', scrollEventHandler);
      			} else {
      				$('#searchNone').remove();
      			}
      			// 기존 게시물을 새로 로딩된 게시물 위에 추가.
      			$('#searchResultAll').prepend(prevCont);
      		});
        }
	}
	// 최초 검색 결과가 존재 할 경우
	if ($('.p_inf').length != 0) {
		document.addEventListener('scroll', scrollEventHandler);
	}
    
    //검색어마다 결과 가져오기
    $('.keyType').click(function() {
    	let word = $('#search').val();
    	if(word != null && word.trim() != "") {
    		let type = $(this).text();
        	const index = $('.keyType').index($(this))
        	$('#searResult').load(`searchList?keyWord=\${word}&keyType=\${type} #searchResultAll`)
        	$('.keyType').removeAttr("id");
        	$('.keyType').eq(index).attr("id", "nowKeyType")	
    	} else {
    		alert('입력된 검색어가 존재하지 않습니다.')
    	}
    })
    
    //프로필 이동
    $('#searResult').on('click', '.searUser', function() {
    	location.href = "profileShow?id="+$('.searUser').closest('.searchResultUser').find('span').eq(1).text().trim().split(" ")[1];
    })
    
    const curId = '<%=(String)session.getAttribute("userid") %>';
    //버튼 클릭 시 언팔로우-팔로우 작업
	$('body').on('click', '.userFollowBtn button', function() {
		let btn = $(this);
		btn.css('pointer-events', 'none');
		if (btn.val() == 0) { // (팔로우 취소 후 다시) 팔로우 할 때
			follow(btn);
		} else { // 팔로우 취소 할 때
			followCancel(btn);
		}
	});
    
	function follow(btn) {
		// 버튼 값 변경
		btn.val(1);
		btn.text('FOLLOWING');
		
		let fId = $.trim(btn.prev('input[type="hidden"]').val());
		
		$.ajax({
			url : '/sns/follow',
			type : 'get',
			data : {
				'id' : curId,
				'followId' : fId,
			},
			success : function(result) {
				if (result == 1) {
					btn.css('pointer-events', 'auto');
					$('#menuall').load('<c:url value="menuReload" />');
					return;
				} else if (result == -1) {
					alert('차단한 유저는 팔로우 할 수 없습니다.\n차단 해제 후 다시 시도해주세요.');
				} else {
					alert('잠시 후 다시 시도해주세요.');
				}
				btn.val(0);
				btn.text('FOLLOW');
			},
			error : function() {
				alert('잠시 후 다시 시도해주세요.');
				btn.val(0);
				btn.text('FOLLOW');
			}
		});
	}
	function followCancel(btn) {
		
		btn.val(0);
		btn.text('FOLLOW');
		
		let fId = $.trim(btn.prev('input[type="hidden"]').val());

		$.ajax({
			url : '/sns/followcancel',
			type : 'get',
			data : {
				'id' : curId,
				'followId' : fId
			},
			success : function(result) {
				btn.css('pointer-events', 'auto');
				$('#menuall').load('<c:url value="menuReload" />');
			},
			error : function() {
				alert('잠시 후 다시 시도해주세요.');
				btn.val(1);
				btn.text('FOLLOWING');
			}
		})
	}
</script>
</html>