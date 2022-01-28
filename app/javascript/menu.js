function menu() {

  const pullDownButton = document.getElementById("menu")
  const pullDownParents = document.getElementById("pull-down")
  const pullDownChild = document.querySelectorAll(".pull-down-menu")

  pullDownButton.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color:rgba(255, 165, 0, 0.5);")
  })

  pullDownButton.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color:rgba(255, 165, 0, 0.5);")
  })

  pullDownButton.addEventListener('click', function() {
    if (pullDownParents.getAttribute("style") == "display:block;") {
      pullDownParents.removeAttribute("style", "display:block;")
    } else {
      pullDownParents.setAttribute("style", "display:block;")
    }
  })

  pullDownChild.forEach(function(list){
    list.addEventListener('mouseover', function() {
      if (list.getAttribute("style") == "background-color:rgba(211, 211, 211, 0.5);") {
        list.removeAttribute("style", "background-color:rgba(211, 211, 211, 0.5);")
      } else {
        list.setAttribute("style", "background-color:rgba(211, 211, 211, 0.5);")
      }
    })
    
    list.addEventListener('mouseout', function() {
      list.removeAttribute("style", "background-color:rgba(211, 211, 211, 0.5);")
    })
  })
}

window.addEventListener('load', menu)