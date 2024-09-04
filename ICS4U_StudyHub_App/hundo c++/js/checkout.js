let displayValue = '';

function appendToDisplay(value) {
    displayValue += value;
    updateDisplay();
}

function updateDisplay() {
    const display = document.querySelector('.display');
    display.value = displayValue;
}

function clearDisplay() {
    displayValue = '';
    updateDisplay();
}

function deleteLast() {
    displayValue = displayValue.slice(0, -1);
    updateDisplay();
}

function evaluateExpression(expression) {
    try {
        const result = eval(expression);
        return result.toString();
    } catch (error) {
        throw new Error('Invalid expression');
    }
}

function evaluateAndDisplay() {
    try {
        const result = evaluateExpression(displayValue);
        displayValue = result;
        updateDisplay();
    } catch (error) {
        showModal(error.message);
    }
}

function parenthesis(value) {
    displayValue += value;
    updateDisplay();
}

function power() {
    displayValue += '^';
    updateDisplay();
}

function squareRoot() {
    displayValue += 'Math.sqrt(';
    updateDisplay();
}

function showModal(message) {
    const modal = document.getElementById('modal');
    const modalMessage = document.getElementById('modal-message');
    modalMessage.textContent = message;
    modal.style.display = 'block';

    const closeButton = document.getElementById('close-modal');
    closeButton.onclick = function() {
        modal.style.display = 'none';
    };
}
