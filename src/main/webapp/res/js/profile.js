$(document).ready(function(){
   var op = { contentType: 'application/json; charset=UTF-8'};

   //정보변경 활성화 버튼
   $("#Modify_profile").click(function() { 
             $(".profile").attr('readonly', true) 
                {    
                    $(".profile").addClass('bg-color');
                    $(".profile").attr('readonly', false); 
                } 
             
             $(".profile2").attr('readonly', true) 
             {    
                 $(".profile2").addClass('bg-color');
                 $(".profile2").attr('readonly', false); 
             } 
             
             $(".addsch2").attr('disabled', true) 
             {    
                 $(".addsch2").attr('disabled', false); 
             } 
         });

//변경 및 수정완료 버튼
      $("#Modify_completed").click(function() {
            var params = {
                  "CL_ID"            :   $("#CL_ID").val(),
                  "CL_Kname"         :   $("#CL_Kname").val(),
                  "CL_birth"         :   $("#CL_birth").val(),
                  "CL_email"         :   $("#CL_email").val(),
                  "CL_phone"         :   $("#CL_phone").val(),
                  "CL_PW"            :   $("#CL_PW").val(),
                  "CL_postcode"      :   $("#CL_postcode").val(),
                  "CL_address"      :   $("#CL_address").val(),
                  "CL_detailaddress"   :   $("#CL_detailaddress").val()
               };
         op.data = JSON.stringify(params);
         op.url = "/Update";
         op.type = "PATCH";
         console.log(params);
           $.ajax(op).done(function(d){
                  console.log(d);
                  if(d > 0){
                     alert("회원 수정 완료");
                  }else {
                     alert("회원 수정 실패");            
                  }
           $(".profile").attr('readonly', false)
               {
                  $(".profile").removeClass('bg-color');
                  $(".profile").attr('readonly', true);
               }
           $(".profile2").attr('readonly', false)
            {
               $(".profile2").removeClass('bg-color');
               $(".profile2").attr('readonly', true);
            }
           $(".addsch2").attr('disabled', true) 
             {    
                 $(".addsch2").attr('disabled', false); 
             }
         });
      });
      
   $("#delete").submit(function(e){
      console.log("delete");
      e.preventDefault();
      op.type ="DELETE";
       op.url = "/Delete";
       $.ajax(op).done(function(d){
          console.log(d);
          if(d > 0){
             alert("회원 탈퇴");
             location.href = "/Login";
          }else {
             alert("회원 탈퇴 실패");
          }
       });
   });
   
});
   