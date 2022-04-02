const menuToggle = document.querySelector("#menu-toggle");
const toggleMenu = document.querySelector(".menu");

menuToggle.addEventListener("click", function(){
toggleMenu.classList.toggle('active');
})
