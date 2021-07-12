document.addEventListener('turbolinks:load', function () {
    currentProgress()

    let control = document.querySelector('.submit')

    if (control) {
      control.addEventListener('click', currentProgress)
    }
})

function currentProgress(event) {
    let current_question = document.querySelector('.bar').dataset.currentNumber - 1
    let total_questions = document.querySelector('.bar').dataset.totalQuestions
    let result_percentage = (100 / total_questions).toFixed(0) * current_question
    let item = document.querySelector('.progress-bar');

    item.style.width = result_percentage + "%";
    item.innerHTML = result_percentage + "%";
}
