// 검색창
const searchForm = document.querySelector("#search-area fieldset");

document.getElementById("query").addEventListener("focus", e => {
    searchForm.style.border = "1px solid #2678F3";
});
document.getElementById("query").addEventListener("focusout", e => {
    searchForm.style.border = "";
});
document.getElementById("query").addEventListener("mouseover", e => {
    searchForm.style.border = "1px solid rgba(0, 0, 0, 0.2)";
});

// ================================================================= //

// 로그인
console.log("main.js loaded.");

function loginValidate(){ // 로그인 유효성 검사 

   
    const inputEmail = document.getElementsByName("inputEmail")[0];
    const inputPw = document.getElementsByName("inputPw")[0];

    if( inputEmail.value.trim().length == 0 ){

        alert("이메일을 입력해주세요.");
        inputEmail.value = ""; 
        inputEmail.focus();  
        return false; 
    }
    
    if(inputPw.value.trim() == ""){
        alert("비밀번호를 입력해주세요.");
        inputPw.value = "";
        inputPw.focus();
        return false;
    }

    return true;
}

// 아이디 저장 체크박스
document.getElementById("saveId").addEventListener("change", function(){

    console.log(this.checked)

    if( this.checked ) {

        const str = "개인 정보 보호를 위해 개인 PC에서의 사용을 권장합니다. 개인 PC가 아닌 경우 취소를 눌러주세요.";

        //confirm(str) // 확인(true) / 취소(false) 대화상자

        if( !confirm(str)  ) { 
            this.checked = false; 
        }
    }
    
});

// ================================================================= //
