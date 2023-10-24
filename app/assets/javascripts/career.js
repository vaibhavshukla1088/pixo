

var btns = document.querySelectorAll('.btn2');
var btnsText = document.querySelectorAll('.btn2-text');

for (let index = 0; index < btns.length; index++) {

    btns[index].addEventListener('click', () => {
        btnsText[index].classList.toggle('hidden');
        btnsText[index].classList.contains('hidden') ? (btns[index].innerText = 'Read More') : (btns[index].innerText = 'Less')
    });
};
    
