<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="kor">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>momentum</title>
</head>
<link rel="stylesheet" href="/sns/resources/css/menuAll.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
    integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
    crossorigin="anonymous" referrerpolicy="no-referrer">
</script>
<script src="/sns/resources/JS/setTheme.js"></script>
<body>
    <div id="menulogo">
        <!--아이콘-->
    </div>
    <div id="menu">
    
    	<a href="/sns/main">
    		<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
  				<path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V8.207l.646.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293zM13 7.207V13.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V7.207l5-5z"/>
			</svg>
			<span>HOME</span>
    	</a>
    	<br>

        <a href="profileShow">
            <div id="menu-profile-image">
                <img>
            </div>
            <span id="menu-profile-id">PROFILE</span>
        </a>
        <br>

        <a href="/sns/search">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-search"
                viewBox="0 0 16 16">
                <path
                    d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0" />
            </svg>
            <span>SEARCH</span>
        </a>
        <br>

        <a href="/sns/chatStart">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-send"
                viewBox="0 0 16 16">
                <path
                    d="M15.854.146a.5.5 0 0 1 .11.54l-5.819 14.547a.75.75 0 0 1-1.329.124l-3.178-4.995L.643 7.184a.75.75 0 0 1 .124-1.33L15.314.037a.5.5 0 0 1 .54.11ZM6.636 10.07l2.761 4.338L14.13 2.576zm6.787-8.201L1.591 6.602l4.339 2.76z" />
            </svg>
            <span>MESSAGE</span>
        </a>
        <br>

        <a href="/sns/posting">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil"
                viewBox="0 0 16 16">
                <path
                    d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168zM11.207 2.5 13.5 4.793 14.793 3.5 12.5 1.207zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293zm-9.761 5.175-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325" />
            </svg>
            <span>CREATE</span>
        </a>
        <br>


        <a href="/sns/followList/followings">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-people"
                viewBox="0 0 16 16">
                <path
                    d="M15 14s1 0 1-1-1-4-5-4-5 3-5 4 1 1 1 1zm-7.978-1L7 12.996c.001-.264.167-1.03.76-1.72C8.312 10.629 9.282 10 11 10c1.717 0 2.687.63 3.24 1.276.593.69.758 1.457.76 1.72l-.008.002-.014.002zM11 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4m3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0M6.936 9.28a6 6 0 0 0-1.23-.247A7 7 0 0 0 5 9c-4 0-5 3-5 4q0 1 1 1h4.216A2.24 2.24 0 0 1 5 13c0-1.01.377-2.042 1.09-2.904.243-.294.526-.569.846-.816M4.92 10A5.5 5.5 0 0 0 4 13H1c0-.26.164-1.03.76-1.724.545-.636 1.492-1.256 3.16-1.275ZM1.5 5.5a3 3 0 1 1 6 0 3 3 0 0 1-6 0m3-2a2 2 0 1 0 0 4 2 2 0 0 0 0-4" />
            </svg>
            <span>FOLLOW</span>
        </a>
        <br>
        
        <a href="/sns/settings">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-gear"
                viewBox="0 0 16 16">
                <path
                    d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492M5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0" />
                <path
                    d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115z" />
            </svg>
            <span>SETTINGS</span>
        </a>
        <br>
        
        <button type="button" id="theme-change-btn" class="">theme change</button>
        <br>
        
		<!--내가 팔로우하는 유저 목록 간단하게 보여주는 table-->
	    <div id="simplefollowtable">
	        <table>
	            <thead>
	                <tr>
	                    <th colspan="2">FOLLOWINGS</th>
	                </tr>
	            </thead>
	            <tbody>
	                
	            </tbody>
	        </table>
	    </div>
        
    </div>
    <div id="logout">
        <a href="/sns/logout" id="menu-logout">
        	<svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-power" viewBox="0 0 16 16">
  <path d="M7.5 1v7h1V1z"/>
  <path d="M3 8.812a5 5 0 0 1 2.578-4.375l-.485-.874A6 6 0 1 0 11 3.616l-.501.865A5 5 0 1 1 3 8.812"/>
</svg>
        </a>
    </div>
</body>
<script>

	$(document).ready(function() {
		getMyProfile();
		getFollowings();
	});
	
	function getMyProfile() {
		$.ajax({
			url: 'menu-profile',
			type: 'get',
			success: function(result) {
				let photo = result.photo;
				if (photo == null || $.trim(photo) == '') {
					photo = '/sns/resources/img/프로필.png';
				} else {
					photo = `/sns/download?filename=\${photo}`;
				}
				$('#menu-profile-image img').attr('src', photo);
				$('#menu-profile-id').text(result.nickName);
			},
			error: function() {
				alert('프로필 로딩 중 오류가 발생했습니다.');
			}
		});
	}
	
	function getFollowings() {
		$.ajax({
			url: 'menu-followings',
			type: 'get',
			success: function(result) {
				if (result != null && result.length != 0) {
					let proText;
					let proPhoto;
					for (let pvo of result) {
						if (pvo.photo == null || $.trim(pvo.photo) == '') {
							proPhoto = '/sns/resources/img/프로필.png';
						} else {
							proPhoto = `/sns/download?filename=\${pvo.photo}`;
						}
						proText = `<tr>
		                    <td width="20%">
		                    <input type="hidden" value="\${pvo.id}">
			                    <div class="menu-following-photo-div">
			                    	<img src="\${proPhoto}">
			                    </div>
		                    </td>
		                    <td style="text-align: left" class="menu-following-name">\${pvo.nickName}</td>
		                </tr>`;
		                $('#simplefollowtable tbody').append(proText);
					}
				} else {
					$('#simplefollowtable').remove();					
				}
			},
			error: function() {
				alert('팔로윙 유저 로딩 중 오류가 발생했습니다.');
			}
		});
	}

	$('#theme-change-btn').on('click', function() {
		switchTheme();
	});
	
	$('body').on('click', '#simplefollowtable table tbody tr', function() {
		let id = $.trim($(this).find('input[type="hidden"]').val());
		location.href = `/sns/profileShow?id=\${id}`;
	});
	
	
</script>
</html>