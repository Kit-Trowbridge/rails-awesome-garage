// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import "bootstrap"
import "@popperjs/core"


review_section = Document.querySelector(".review-section")
review_form = Document.querySelector(".review-form")
comment_button = Document.querySelector(".comment-btn")
// how to do click or hover
// review_section.addEventListener("click", (event) => {
//   event.currentTarget.classList.toggle("show");
//   })
review_section.addEventListener("click", (event) => {
  console.log("clicked")
  })
