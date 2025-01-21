document.addEventListener('DOMContentLoaded', () => {

    const trackerSteps = document.querySelectorAll('[id^="tracker-step-"]');
    const formSteps = document.querySelectorAll('.step');
    const previousButton = document.getElementById('previous');
    const nextButton = document.getElementById('next');
    const reviewModal = document.getElementById('review-modal');
    const reviewContent = document.getElementById('review-content');
    const editButton = document.getElementById('editButton');

    let currentStep = 0;

    const showStep = (index) => {
        previousButton.disabled = currentStep === 0;

        formSteps.forEach((step, i) => {
            step.classList.toggle('hidden', i !== index);
        });


        nextButton.textContent = index === formSteps.length - 1 ? 'Review' : 'Continue';

        trackerSteps.forEach((tracker, i) => {
            const circle = tracker.querySelector('div');
            if (i <= index) {
                circle.classList.add('bg-sky-500', 'text-white');
                circle.classList.remove('bg-gray-300', 'text-gray-700');
            } else {
                circle.classList.add('bg-gray-300', 'text-gray-700');
                circle.classList.remove('bg-sky-500', 'text-white');
            }
        });


    };


    previousButton.addEventListener('click', () => {
        if (currentStep > 0) {
            currentStep--;
            showStep(currentStep);
        }
    });

    nextButton.addEventListener('click', () => {
        if (currentStep < formSteps.length - 1) {
            currentStep++;
            showStep(currentStep);
        } else {


            reviewModal.classList.remove('hidden');
        }
    });


    trackerSteps.forEach((tracker, index) => {
        tracker.addEventListener('click', () => {
            currentStep = index;
            showStep(currentStep);
        });
    });

    editButton.addEventListener('click', () => {
        reviewModal.classList.add('hidden');
        currentStep = steps.length - 1;
        updateStep();
    });


    showStep(currentStep);


});

function updateFields() {

    const instructionalHrs = document.getElementById("instructionalHrs");
    const numProgrammeHrs = document.getElementById("numProgrammeHrs");
    const lectureRate = document.getElementById("lectureRate");
    const sumInstruHrs = document.getElementById("sumInstruHrs");
    const sumInstruCost = document.getElementById("sumInstruCost");


    numProgrammeHrs.value = instructionalHrs.value;
    sumInstruHrs.textContent = instructionalHrs.value;
    var cost = parseFloat(instructionalHrs.value) * parseFloat(lectureRate.value);
    sumInstruCost.textContent = new Intl.NumberFormat("en-US", {
        minimumFractionDigits: 2,
        maximumFractionDigits: 2,
    }).format(cost);
    
}

function formatFloatInput(input) {
    let value = input.value.replace(/[^0-9.]/g, "");

    if ((value.match(/\./g) || []).length > 1) {
        value = value.substring(0, value.lastIndexOf("."));
    }

    input.value = value;
}

function enforceDecimalFormat(input) {
    let value = parseFloat(input.value) || 0; 
    input.value = value.toFixed(2); 
}
function enforceDecimal() {
    const instructionalHrs = document.getElementById("instructionalHrs");
    let value = parseFloat(instructionalHrs.value) || 0; 

    instructionalHrs.value = value.toFixed(1); 
}


function sendInnerHtmlToServer() {
    // Get the innerHTML of the div
    var reviewDiv = document.getElementById("review-modall");
    var innerHtml = reviewDiv.innerHTML;

    // Store it in the hidden field
    document.getElementById("hiddenHtmlContent").value = innerHtml;

    // Trigger the server-side button click directly
    __doPostBack('<%= downloadButton.UniqueID %>', '');
}
