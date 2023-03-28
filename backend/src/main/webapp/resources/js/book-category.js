const categoryKorType = document.querySelector(".kor");
const categoryJapType = document.querySelector(".jap");
const categoryUSAType = document.querySelector(".usa");


const showValue = (target) => {
	const value = target.value;
  
	if(value === "대한민국") {
		categoryKorType.required="true";
		categoryKorType.style.display="block";
		categoryJapType.style.display="none";
		categoryUSAType.style.display="none";
	} else if(value === "일본") {
		categoryKorType.style.display="none";
		categoryJapType.style.display="block";
		categoryJapType.required="true";
		categoryUSAType.style.display="none";
	} else {
		categoryKorType.style.display="none";
		categoryJapType.style.display="none";
		categoryUSAType.required="true";
		categoryUSAType.style.display="block";
	}
}

