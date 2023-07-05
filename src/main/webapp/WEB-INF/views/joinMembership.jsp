<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" type="text/css" href="/resources/style.css">

<!-- ${pageContext.request.contextPath} -->
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원가입 화면 샘플 - Bootstrap</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <style>
    body {
      min-height: 100vh;

      background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
      background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
    }

    .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
  </style>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>

<body>
<div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">회원가입</h4>
        <form class="validation-form" novalidate>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="id">아이디</label>
              <input type="text" class="form-control" id="id" placeholder="" value="" required>
              <div class="invalid-feedback">
                                아이디을 입력해주세요.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="name">이름</label>
              <input type="text" class="form-control" id="name" placeholder="" value="" required>
              <div class="invalid-feedback">
                                이름을 입력해주세요.
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 mb-3">
                <label for="pwd">비밀번호</label>
                <input type="password" class="form-control" id="pwd" placeholder="" value="" required>
                <div class="invalid-feedback">
                                 비밀번호을 입력해 주세요.
                </div>
            </div>
            <div class="col-md-6 mb-3">
                <label for="pwdCheck">비밀번호 확인</label>
                <input type="password" class="form-control" id="pwdCheck" placeholder="" value="" required>
                <div class="invalid-feedback">
                                  비밀번호을 입려해 주세요 
                </div>
            </div>
          </div>

          <div class="row">
            <div class="col-md-6 mb-3">
                <label for="email">이메일</label>
                <input type="email" class="form-control" id="email" placeholder="you@gmail.com" required>
                <div class="invalid-feedback">
               		 이메일을 입력해주세요.
                </div>
            </div>
            <div class="col-md-6 mb-3">
                <label for="mailAdd">선택</label>
                <select class="custom-select d-block w-100" id="mailAdd">
                <option value="">직접입력</option>
                <option value="@gmail.com">@gmail.com</option>
                <option value="@naver.com">@naver.com</option>
                <option value="@kakao.com">@kakao.com</option>
                <option value="@lycos.co.kr">@lycos.co.kr</option>
                
                </select>
               
            </div>
          </div>
          <div class="row">
            <div class="col-md-12 mb-3">
                <label for="tel">전화번호</label>
                <input type="tel" class="form-control" id="tel" placeholder="010-1234-5678" required>
                <div class="invalid-feedback">
                    	전화번호을 입력해주세요.
                </div>
            </div>

          </div>

          <div class="mb-3">
            <label for="address">주소</label>
            <input type="text" class="form-control" id="addr1" placeholder="서울특별시 강남구" required>
            <div class="invalid-feedback">
            	  주소를 입력해주세요.
            </div>
          </div>

          <div class="mb-3">
            <label for="address2">상세주소<span class="text-muted">&nbsp;(필수 아님)</span></label>
            <input type="text" class="form-control" id="addr2" placeholder="상세주소를 입력해주세요.">
          </div>

      
          <hr class="mb-4">
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="aggrement" required>
            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
          </div>
          <div class="mb-4"></div>
          <!-- <button class="btn btn-primary btn-lg btn-block" type="submit">가입 완료</button> -->
          <button class="btn btn-primary btn-lg btn-block" onclick="return check()">가입 완료</button>
          <!-- <button class="btn btn-primary btn-lg btn-block" onclick="check(event)">가입 완료</button> -->
        </form>
      </div>
    </div>
    <footer class="my-3 text-center text-small">
      <p class="mb-1">&copy; 2023 카피함</p>
    </footer>
  </div>
  
  
  <script>
  
  
  $( document ).ready( function() {
	  

	  
	  //전화번호 체크 
	  $('#tel').change( function() {
		  const regex = /\d{3}-\d{4}-\d{4}/;
		  console.log('전화번호 check '+regex.test($('#tel').val()));
		  
		  if(!regex.test($('#tel').val())){
			  alert('전화번호를 확인 해 주세요');
		  }
	  });
	} );

  
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
            //check();
            
          }

          form.classList.add('was-validated');
        }, false);
      });
    }, false);
    
    
    var isEmpty = function(value){
    	  if( value == "" || value == null || value == undefined || ( value != null && typeof value == "object" && !Object.keys(value).length ) ){
    	    return true
    	  }else{
    	    return false
    	  }
    	};
    
 
    
    var check = function(event){
    	
    	
    	//값이 없는지 체크 
    	//id 
    	//id는 나중에 중복 확인 하는 버튼 눌러서 중복 확인 check 함
    	//공백 체크 메소드를 하나더 만들어서 진행 
    	
//     	if ($('#id').val()){
    		
//     	}

    	//이메일 체크 
	   	 let regex = new RegExp('[a-z0-9]+@[a-z]+\.[a-z]{2,3}');
	   	 let checkEmail = $('#email').val()+$('#mailAdd').val();
	   	 
	   	 console.log( 'checkEmail '+ checkEmail);
	   	 
		 console.log('이메일 check '+regex.test(checkEmail));
		  
		 if(!regex.test(checkEmail)){
			  alert('이메일 형식을 확인 해주세요 ');
			  return false;
			  
		 };
		 

		 
		 


// 아래 로직은 안 먹는다. 그냥 넘어 간다.
// 	   	 let regex = new RegExp('[a-z0-9]+@[a-z]+\.[a-z]{2,3}');
// 	   	 let checkEmail = $('#email').val()+$('#mailAdd').val();
	   	 
// 	   	 console.log( 'checkEmail '+ checkEmail);
	   	 
// 		 console.log('이메일 check '+regex.test(checkEmail));
		  
// 		 if(!regex.test(checkEmail)){
// 			  alert('이메일 형식을 확인 해주세요 ');
// 			  event.preventDefault(); 
// 		 }
    	
    	var agreeYn = $('#aggrement').is(':checked') ? "Y" : "N";
   
    	
    	const sendingData = new FormData();
    	
    	console.log(agreeYn);
    	
//        	sendingData.append('userId',$('#id').val());
//     	sendingData.append('userName',$('#name').val());
//     	sendingData.append('pwd',$('#pwd').val());
//     	sendingData.append('email',$('#email').val());
//     	sendingData.append('tel',$('#tel').val());
//     	sendingData.append('addr1',$('#addr1').val());
//     	sendingData.append('addr2',$('#addr2').val());
//     	sendingData.append('agreeYn',agreeYn);  
    	
//     	const sd = sendingData.serialize(); 
    	
    	const params = {
    			"userId" : "superbiron",
    			"pwd"  : "^^"
    	};
    	
    	var formData = {
    			"userId": $('#id').val(),
    			"userName": $('#name').val(),
    			"pwd": $('#pwd').val(),
    			"email": $('#email').val(),
    			"tel": $('#tel').val(),
    			"addr1": $('#addr1').val(),
    			"addr2": $('#addr2').val(),
    			"agreeYn": agreeYn

    	};
    	
//     	const sendD ="Hello Spring";
//            {
//     			 userId : "superbiron",
//     			 pwd : "1"
//     		} 
    	  // map으로 받아 보려고 했음 
//      	$.ajax({
//     		 type: "post"
//     		,url: "/joinMember"
//     		,data: JSON.stringify(params)
//     		,dataType:'text'
//     		,contentType: "application/json"
//     		,success:function(result){
//     			console.log("성공 "+result);
//     		}
//     		,error: function(result){
//     			console.log("성공 "+result);
//     		}
    		
//     	}); 
     	
     	// vo로 받는 경우 data 부분에 json 형식 처럼 만들어서 보내는 경우 
//      	$.ajax({
// 	   		 type: "post"
// 	   		,url: "/ex04"
// 	   		,data: {
// 	   			 userId : "superbiron123",
// 	   			 pwd : "1deeqwDaDSF"
// 	   		} 
// 	   		,dataType:'text'
// 	   		,contentType: "application/x-www-form-urlencoded; charset=UTF-8"
// 	   		,success:function(result){
// 	   			console.log("성공 "+result);
// 	   		}
// 	   		,error: function(result){
// 	   			console.log("성공 "+result);
// 	   		}
//    		}); 
     	
     	//vo로 받는데 data 를 객체에 답아서 json 형식 처럼 보네는 경우 
     	// contentType이 json이 아니라 일반 text로 되어 있음 
//     	$.ajax({
// 	   		 type: "post"
// 	   		,url: "/ex05"
// 	   		,data: formData
// 	   		,dataType:"text"
// 	   		,contentType: "application/x-www-form-urlencoded; charset=UTF-8"
// 	   		,success:function(result){
// 	   			console.log("성공 "+result);
// 	   		}
// 	   		,error: function(result){
// 	   			console.log("성공 "+result);
// 	   		}
//   		}); 
     	
     	
    	$.ajax({
	   		 type: "post"
	   		,url: "/joinMember"
	   		,data: formData
	   		,dataType:"text"
	   		,contentType: "application/x-www-form-urlencoded; charset=UTF-8"
	   		,success:function(result){
	   			console.log("성공 "+result);
	   		}
	   		,error: function(result){
	   			console.log("성공 "+result);
	   		}
 		}); 
   	 
     	
     	
//     	$.ajax({
// 	   		 type: "post"
// 	   		,url: "/ex06"
// 	   		,data:  JSON.stringify(data)
// 	   		,dataType:"json"
// 	   		,contentType: "application/json"
// 	   		,success:function(result){
// 	   			console.log("성공 "+result);
// 	   		}
	   		
//  		}); 
    	 
    	
     	//post로 보내는 경우 
//      	$.ajax({
//      		type:"get",
//      	    url:'/ex02',
//      	    data: { "param1" : "superbiron",
//      	    	    "param2" :  "ss0025ss"
//      	    },
//      	    dataType:'json',
//      	    success:function(data){
//      	    	console.log("success : ", data);
//      	    },
//      	    error:function(e){
//      	        console.log("error : ", e);
//      	    }
//      	});
    	 
    	 
//      	$.ajax({
//      		type:"post",
//      	    url:'/ex03',
//      	    data: params,
//      	    dataType:'json',
//      	    success:function(data){
//      	    	console.log("success : ", data);
//      	    },
//      	    error:function(e){
//      	        console.log("error : ", e);
//      	    }
//      	});
    };
  </script>
</body>

</html>


