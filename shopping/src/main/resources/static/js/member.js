$(function(){
                $('#findIDInModal').on('click',function(){
                        
                   let form = {
                        mname : $('#nameInput').val(),
                        email : $('#emailInput').val()                             
                    }
                  alert("입력하신 이름은: "+form.mname + "\n" + "입력하신 email은:" +form.email);  
          
                        $.ajax({
                    url: "/getId",
                    type: "Post",
                    data: JSON.stringify(form),
                    contentType: "application/json; charset=utf-8;",
                    dataType: "text",
                    success: function(data){
                     
                        $('#red').text('');
                        $('#red').text(data);
                    },
                    error: function(request,status,error){
                       alert("code = "+ request.status + " message = " + request.responseText + " error = " + error);
                    }                    
                });//ajax end
                });//버튼 이벤트설정 
        });//페이지로딩
        
$(function(){
                $('#findPWInModal').on('click',function(){
                        
                   let form = {                        
                        id : $('#idInput').val(),
                        mname : $('#nameInput2').val()                             
                    }
                  alert("입력하신 ID는: "+form.id + "\n" + "입력하신 이름은: " +form.mname);  
          
                        $.ajax({
                    url: "/getPw",
                    type: "Post",
                    data: JSON.stringify(form),
                    contentType: "application/json; charset=utf-8;",
                    dataType: "text",
                    success: function(data){
                     
                        $('#red2').text('');
                        $('#red2').text(data);
                    },
                    error: function(request,status,error){
                       alert("code = "+ request.status + " message = " + request.responseText + " error = " + error);
                    }                    
                });//ajax end
                });//버튼 이벤트설정 
        });//페이지로딩