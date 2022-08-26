var myForm = document.getElementById('needs-validation');

if (myForm) {
    myForm.addEventListener('submit', showLoader);
}

function showLoader(e) {
    var validate = true;
    $('input:required').each(function () {
        if ($(this).val().trim() === '') {
            validate = false;
        }
    });
    $('textarea:required').each(function () {
        if ($(this).val().trim() === '') {
            validate = false;
        }
    });
    $('select:required').each(function () {
        if ($(this).val().trim() === '') {
            validate = false;
        }
    });
    var allSpans = document.getElementsByTagName('span');
    var count = 0;
    for (var i = 0; i < allSpans.length; i++) {
        console.log(allSpans[i].textContent);
        if (allSpans[i].textContent === 'Required!' || allSpans[i].textContent == 'Please select!' || allSpans[i].textContent == 'Please enter a valid email address.' || allSpans[i].textContent == 'This field is required.') {
            validate = false;
            break;
        }
        else {
            count++;
        }
    }
    if (validate) {
        this.querySelector('.loader-container').style.display = 'block';
    }
}
