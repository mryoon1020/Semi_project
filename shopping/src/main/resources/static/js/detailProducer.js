$(function(){
                $('#addReviewBtn').on('click',function(){
                        
                   
                  alert("모달실행");  
        			$("#review").modal("show");
                       
                });//버튼 이벤트설정 
        });//페이지로딩
        
console.log("*****review Module........");
function getList(param) {
     let contentsno = param.contentsno;
         let sno = param.sno;
         let eno = param.eno;
        return fetch(`/contents/review/list/${contentsno}/${sno}/${eno}`,{method:'get'}) 
              .then(response => response.json())
              .catch(console.log)
}
 
function getPage(param) {
    let url = `/contents/review/page?${param}`;
console.log(url);
        return fetch(url,{method : 'get'})
              .then(response => response.text())
              .catch(console.log)
 
}

function add(reply) {
        return fetch('/contents/review/create',{
                method: 'post',
                body: JSON.stringify(reply),
                headers: {'Content-Type': "application/json; charset=utf-8"}
                })
                .then(response => response.json())
                .catch(console.log);
}
 
function get(rnum) {
        return fetch(`/review/${rnum}`,{method: 'get'})
               .then(response => response.json())
               .catch(console.log);
}

function update(reply) {
        return fetch(`/review/`,{
                method: 'put',
                body: JSON.stringify(reply),
                headers: {'Content-Type': "application/json; charset=utf-8"}
                })
               .then(response => response.text())
               .catch(console.log);
}
 
function remove(rnum) {
        return fetch(`/review/${rnum}`,{method: 'delete'})
               .then(response => response.text())
               .catch(console.log);
}