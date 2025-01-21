document.addEventListener('DOMContentLoaded', () => {
    const mobileMenuToggle = document.getElementById('mobile-menu-toggle');
    const mobileMenu = document.getElementById('mobile-menu');

    const servicesButton = document.getElementById('lnkServicesMobile');
    const servicesDropdown = document.getElementById('servicesDropdown');

    if (mobileMenuToggle) {
        mobileMenuToggle.addEventListener('click', () => {
            mobileMenu.classList.toggle('hidden');
        });
    }

    if (servicesButton && servicesDropdown) {
        servicesButton.addEventListener('click', () => {
            // Toggle the visibility of the dropdown
            servicesDropdown.classList.toggle('hidden');
        });
    }
});


