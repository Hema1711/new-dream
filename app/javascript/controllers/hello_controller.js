import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets  =   ["search","email", "login"]

  connect() {

    console.log("Enter")
  }

  search_box(){
    console.log("Search Box")
    var search = document.getElementById("search-bar");
    search.classList.toggle('active');
  }

  login_box(){
    console.log("Login")
    var login = document.getElementById("login-box");
      login.classList.toggle('active');
  }

  email_validation(){
    console.log("Email")
  }


}
