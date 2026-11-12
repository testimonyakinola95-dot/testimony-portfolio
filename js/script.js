
// Find the theme button on the webpage
const themeButton = document.getElementById("theme-toggle");

// Listen for a click on the button
themeButton.addEventListener("click", function () {

    // Switch between dark mode and light mode
    document.body.classList.toggle("light-mode");

    // Update the button text
    if (document.body.classList.contains("light-mode")) {
        themeButton.textContent = "Dark Mode";
    } else {
        themeButton.textContent = "Light Mode";
    }

});
