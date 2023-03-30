

$(".list").click(function() {

    console.log($(this).val());

    // 선택한 버튼 배경색
    $(this).style.backgroundColor = "red";

    
    $.ajax({
        url : "product/person",
        data : {"type" : $(this).val()},
        type : "GET",
        dataType : "JSON",
        success : function(productList) {

            // 전체 박스
			const mainBox = document.getElementsByClassName("content-box-right-content");
			mainBox.style.backgroundColor = "red";

            // 제목
            const leftTitle = document.querySelector(".people-bg h2");
            const rightTitle = document.createElement("h2");
            rightTitle.classList.add("title");
            rightTitle.classList.add("right-title");
            rightTitle.innerText = leftTitle.innerText;
            // 부제목
            const leftSubTitle = document.querySelector(".people-bg p:nth-of-type(2)");
            const rightSubTitle = document.createElement("div");
            rightSubTitle.classList.add("right-sub-title");
            rightSubTitle.innerText = leftSubTitle.innerText;

            // 제목 공간
            const titleSection = document.createElement("section");

            titleSection.append(rightTitle, rightSubTitle);



            let liListArr = new Array();

            for(let product of productList) {

                // 제품명
                const productName = document.createElement("p");
                productName.innerText = product.productName;
                // 제품명 박스
                const productNameBox = document.createElement("div");
                // 제품 이미지
                const productImg = document.createElement("img");
                // 이미지 경로는 DB에 경로를 넣어야 하나 String으로 넣어야..
                productImg.setAttribute("src", contextPath + "")              
                // 제품 박스
                const productBox = document.createElement("div");
                productBox.classList.add("product");
                // 제품 링크 연결
                const productLink = document.createElement("a");
                productLink.setAttribute("src", contextPath + "")              
                // 경로 연결...................

                // li
                const liList = document.createElement("li");

                productNameBox.append(productName);
                productBox.append(productImg, productNameBox);
                productLink.append(productBox)
                liList.append(productLink);

                liListArr.push(liList);

            }   

            const ul = document.createElement("ul");

            // ul, li 태그를 어떻게 하지...
            ul.append(liListArr);

            const productContent = document.createElement("section");
            productContent.append(ul);


            mainBox.append(titleSection, productContent);
            
        },
        error : function() {

        }
    })


});