// Your previous JavaScript code for handling button clicks
const buttons = document.querySelectorAll('.btn');

buttons.forEach((button) => {
  button.addEventListener('click', function(event) {
    const hash = this.hash;
    if (hash !== '') {
      event.preventDefault();
      const targetElement = document.querySelector(hash);
      if (targetElement) {
        window.scrollTo({
          top: targetElement.offsetTop,
          behavior: 'smooth'
        });
      }
    }
  });
});
