const cartoonType = document.querySelectorAll("header ul.main_menu>li");
const cartoonKorList = document.querySelectorAll("header ul.main_menu ul.cartoon_type_1");
const cartoonJapList = document.querySelectorAll("header ul.main_menu ul.cartoon_type_2");
const cartoonUSAList = document.querySelectorAll("header ul.main_menu ul.cartoon_type_3");

let onCartoonKorList = false;
let onCartoonJapList = false;
let onCartoonUSAList = false;

function onCartoonTypeHome(event) {
    // console.log(event.target.innerText);
    // console.log(cartoonType);
    // console.log(cartoonKorList);
}

function onCartoonTypeKor(event) {
    if (!onCartoonKorList) {
        cartoonKorList.forEach((item) => {
            item.style.display = "block";
        })
        onCartoonKorList = true;
    } else {
        cartoonKorList.forEach((item) => {
            item.style.display = "none";
        })
        onCartoonKorList = false;
    }
}

function onCartoonTypeJap(event) {
    if (!onCartoonJapList) {
        cartoonJapList.forEach((item) => {
            item.style.display = "block";
        })
        onCartoonJapList = true;
    } else {
        cartoonJapList.forEach((item) => {
            item.style.display = "none";
        })
        onCartoonJapList = false;
    }
}

function onCartoonTypeUSA(event) {
    if (!onCartoonUSAList) {
        cartoonUSAList.forEach((item) => {
            item.style.display = "block";
        })
        onCartoonUSAList = true;
    } else {
        cartoonUSAList.forEach((item) => {
            item.style.display = "none";
        })
        onCartoonUSAList = false;
    }
}

cartoonType[0].addEventListener("click", onCartoonTypeHome);
cartoonType[1].addEventListener("click", onCartoonTypeKor);
cartoonType[2].addEventListener("click", onCartoonTypeJap);
cartoonType[3].addEventListener("click", onCartoonTypeUSA);